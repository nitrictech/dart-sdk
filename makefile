clean:
	rm -rf lib/src/nitric

build:
	mkdir -p lib/src/nitric/proto
	mkdir -p lib/src/nitric/google
	protoc --dart_out=grpc:lib/src/ --proto_path=nitric/**/*.proto

NITRIC_VERSION := 1.0.0

download:
	curl -L https://github.com/nitrictech/nitric/releases/download/v${NITRIC_VERSION}/proto.tgz -o proto.tgz
	tar xvzf proto.tgz
	rm proto.tgz

