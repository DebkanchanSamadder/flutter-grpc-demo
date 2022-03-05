///
//  Generated code. Do not modify.
//  source: ping.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use pingDescriptor instead')
const Ping$json = const {
  '1': 'Ping',
  '2': const [
    const {'1': 'greetings', '3': 1, '4': 1, '5': 9, '10': 'greetings'},
  ],
};

/// Descriptor for `Ping`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingDescriptor = $convert.base64Decode('CgRQaW5nEhwKCWdyZWV0aW5ncxgBIAEoCVIJZ3JlZXRpbmdz');
@$core.Deprecated('Use pongDescriptor instead')
const Pong$json = const {
  '1': 'Pong',
  '2': const [
    const {'1': 'acknowledgement', '3': 1, '4': 1, '5': 9, '10': 'acknowledgement'},
  ],
};

/// Descriptor for `Pong`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pongDescriptor = $convert.base64Decode('CgRQb25nEigKD2Fja25vd2xlZGdlbWVudBgBIAEoCVIPYWNrbm93bGVkZ2VtZW50');
