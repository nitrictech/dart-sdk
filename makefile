.PHONY: coverage

clean:
	rm -rf lib/src/nitric
	rm -rf lib/src/google

NITRIC_VERSION := 1.14.0
GRPC_VERSION := 3.2.4

download-nitric:
	curl -L https://github.com/nitrictech/nitric/releases/download/v${NITRIC_VERSION}/proto.tgz -o nitric.tgz
	tar xvzf nitric.tgz
	rm nitric.tgz

download-google_well_known:
	curl -L https://github.com/grpc/grpc-dart/archive/refs/tags/v${GRPC_VERSION}.tar.gz -o google.tgz
	tar xvzf google.tgz
	rm google.tgz
	mkdir -p ./lib/src/google/protobuf
	mv -f grpc-dart-${GRPC_VERSION}/example/googleapis/lib/src/generated/google/protobuf ./lib/src/google
	rm -rf grpc-dart-${GRPC_VERSION}

build: clean download-nitric download-google_well_known
	mkdir -p lib/src/nitric/proto
	mkdir -p lib/src/nitric/google
	echo "To use dart plugin use `dart pub global activate protoc_plugin`"
	protoc -I ./ --dart_out=grpc:lib/src/ ./nitric/proto/*/*/*.proto
# relocate well known types as their relative location is not generated correctly on first build
	mv lib/src/nitric/google lib/src/google
	dart format lib/src/nitric lib/src/google

coverage:
	dart pub global run coverage:test_with_coverage
	lcov -r coverage/lcov.info -o coverage/lcov.info --ignore-errors unused \
		"**/*.pb*.dart" \
		"**/mixins"
	genhtml coverage/lcov.info -o coverage/html
	open coverage/html/index.html