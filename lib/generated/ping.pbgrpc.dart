///
//  Generated code. Do not modify.
//  source: ping.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'ping.pb.dart' as $0;
export 'ping.pb.dart';

class PingServerClient extends $grpc.Client {
  static final _$doPing = $grpc.ClientMethod<$0.Ping, $0.Pong>(
      '/ping.PingServer/doPing',
      ($0.Ping value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Pong.fromBuffer(value));

  PingServerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Pong> doPing($0.Ping request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$doPing, request, options: options);
  }
}

abstract class PingServerServiceBase extends $grpc.Service {
  $core.String get $name => 'ping.PingServer';

  PingServerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Ping, $0.Pong>(
        'doPing',
        doPing_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Ping.fromBuffer(value),
        ($0.Pong value) => value.writeToBuffer()));
  }

  $async.Future<$0.Pong> doPing_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Ping> request) async {
    return doPing(call, await request);
  }

  $async.Future<$0.Pong> doPing($grpc.ServiceCall call, $0.Ping request);
}
