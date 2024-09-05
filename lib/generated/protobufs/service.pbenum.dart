//
//  Generated code. Do not modify.
//  source: protobufs/service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Response extends $pb.ProtobufEnum {
  static const Response ok = Response._(0, _omitEnumNames ? '' : 'ok');
  static const Response not_acceptable = Response._(1, _omitEnumNames ? '' : 'not_acceptable');

  static const $core.List<Response> values = <Response> [
    ok,
    not_acceptable,
  ];

  static final $core.Map<$core.int, Response> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Response? valueOf($core.int value) => _byValue[value];

  const Response._($core.int v, $core.String n) : super(v, n);
}

class Status extends $pb.ProtobufEnum {
  static const Status pending = Status._(0, _omitEnumNames ? '' : 'pending');
  static const Status approved = Status._(1, _omitEnumNames ? '' : 'approved');
  static const Status rejected = Status._(2, _omitEnumNames ? '' : 'rejected');

  static const $core.List<Status> values = <Status> [
    pending,
    approved,
    rejected,
  ];

  static final $core.Map<$core.int, Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Status? valueOf($core.int value) => _byValue[value];

  const Status._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
