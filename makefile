build:
	mkdir -p lib/src/nitric/proto
	mkdir -p lib/src/nitric/google
	protoc --dart_out=grpc:lib/src/ --proto_path= nitric/**/*.proto