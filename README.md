# flutter_grpc_demo

Demo of how to use a gRPC service hosted on Cloud run from flutter.

## Getting Started
Just clone the repo and run the app

## Troubleshooting

**I accidentally deleted generated files**

Step 1: [protc](https://grpc.io/docs/protoc-installation/)

Step 2:
```
dart pub global activate protoc_plugin

protoc --dart_out=grpc:lib/src/generated -Iprotos protos/ping.proto
```
**I'm getting CERTIFICATE_VERIFY_FAILED error**

If you're running this on an emulator, close it, restart emulator with cold boot and try again