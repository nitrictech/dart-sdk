#!/usr/bin/env bash

if [ ! -d "$PROTOBUF" ]; then
  echo "Please set the PROTOBUF environment variable to your clone of protocolbuffers/protobuf."
  exit -1
fi

protoc --dart_out=grpc:lib/src --proto_path= $PROTOBUF/include/google/protobuf/*.proto;
protoc --dart_out=grpc:lib/src --proto_path= nitric/**/*.proto
