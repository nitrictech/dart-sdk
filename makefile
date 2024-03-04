clean:
	rm -rf lib/src/nitric
	rm -rf lib/src/google

NITRIC_VERSION := 1.0.0
GRPC_VERSION := 3.2.4

download-nitric:
	curl -L https://github.com/nitrictech/nitric/releases/download/v${NITRIC_VERSION}/proto.tgz -o nitric.tgz
	tar xvzf nitric.tgz
	rm nitric.tgz

download-google_well_known:
	curl -L https://github.com/grpc/grpc-dart/archive/refs/tags/v${GRPC_VERSION}.zip -o google.tgz
	tar xvzf google.tgz
	rm google.tgz
	mkdir -p ./lib/src/google/protobuf
	mv grpc-dart-${GRPC_VERSION}/example/googleapis/lib/src/generated/google/protobuf ./lib/src/google
	rm -rf grpc-dart-${GRPC_VERSION}

build: download-nitric download-google_well_known
	mkdir -p lib/src/nitric/proto
	mkdir -p lib/src/nitric/google
	protoc -I ./ --dart_out=grpc:lib/src/ ./nitric/proto/*/*/*.proto
# relocate well known types as their relative location is not generated correctly on first build
	mv lib/src/nitric/google lib/src/google
	dart format lib/src/nitric lib/src/google