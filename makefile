clean:
	rm -rf lib/src/nitric

build: download
	mkdir -p lib/src/nitric/proto
	mkdir -p lib/src/nitric/google
	protoc -I ./ --dart_out=grpc:lib/src/ ./nitric/proto/*/*/*.proto

NITRIC_VERSION := 1.0.0

download:
	curl -L https://github.com/nitrictech/nitric/releases/download/v${NITRIC_VERSION}/proto.tgz -o nitric.tgz
	tar xvzf nitric.tgz
	rm nitric.tgz

