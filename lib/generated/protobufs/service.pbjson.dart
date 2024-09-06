//
//  Generated code. Do not modify.
//  source: protobufs/service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use changeStatusRequestDescriptor instead')
const ChangeStatusRequest$json = {
  '1': 'ChangeStatusRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `ChangeStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changeStatusRequestDescriptor = $convert.base64Decode(
    'ChNDaGFuZ2VTdGF0dXNSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZBIWCgZzdGF0dXMYAiABKAlSBn'
    'N0YXR1cw==');

@$core.Deprecated('Use changeStatusResponseDescriptor instead')
const ChangeStatusResponse$json = {
  '1': 'ChangeStatusResponse',
};

/// Descriptor for `ChangeStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changeStatusResponseDescriptor = $convert.base64Decode(
    'ChRDaGFuZ2VTdGF0dXNSZXNwb25zZQ==');

@$core.Deprecated('Use pendingReviewsRequestDescriptor instead')
const PendingReviewsRequest$json = {
  '1': 'PendingReviewsRequest',
};

/// Descriptor for `PendingReviewsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pendingReviewsRequestDescriptor = $convert.base64Decode(
    'ChVQZW5kaW5nUmV2aWV3c1JlcXVlc3Q=');

@$core.Deprecated('Use userInfoByUserIdRequestDescriptor instead')
const UserInfoByUserIdRequest$json = {
  '1': 'UserInfoByUserIdRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `UserInfoByUserIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userInfoByUserIdRequestDescriptor = $convert.base64Decode(
    'ChdVc2VySW5mb0J5VXNlcklkUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');

@$core.Deprecated('Use addReviewRequestDescriptor instead')
const AddReviewRequest$json = {
  '1': 'AddReviewRequest',
  '2': [
    {'1': 'review', '3': 1, '4': 1, '5': 11, '6': '.Review', '10': 'review'},
  ],
};

/// Descriptor for `AddReviewRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addReviewRequestDescriptor = $convert.base64Decode(
    'ChBBZGRSZXZpZXdSZXF1ZXN0Eh8KBnJldmlldxgBIAEoCzIHLlJldmlld1IGcmV2aWV3');

@$core.Deprecated('Use addReviewResponseDescriptor instead')
const AddReviewResponse$json = {
  '1': 'AddReviewResponse',
};

/// Descriptor for `AddReviewResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addReviewResponseDescriptor = $convert.base64Decode(
    'ChFBZGRSZXZpZXdSZXNwb25zZQ==');

@$core.Deprecated('Use reviewsByUserIdRequestDescriptor instead')
const ReviewsByUserIdRequest$json = {
  '1': 'ReviewsByUserIdRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `ReviewsByUserIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reviewsByUserIdRequestDescriptor = $convert.base64Decode(
    'ChZSZXZpZXdzQnlVc2VySWRSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZA==');

@$core.Deprecated('Use listProfessorRequestDescriptor instead')
const ListProfessorRequest$json = {
  '1': 'ListProfessorRequest',
};

/// Descriptor for `ListProfessorRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listProfessorRequestDescriptor = $convert.base64Decode(
    'ChRMaXN0UHJvZmVzc29yUmVxdWVzdA==');

@$core.Deprecated('Use reviewsByProfessorIdRequestDescriptor instead')
const ReviewsByProfessorIdRequest$json = {
  '1': 'ReviewsByProfessorIdRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `ReviewsByProfessorIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reviewsByProfessorIdRequestDescriptor = $convert.base64Decode(
    'ChtSZXZpZXdzQnlQcm9mZXNzb3JJZFJlcXVlc3QSDgoCaWQYASABKAVSAmlk');

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'avatar', '3': 3, '4': 1, '5': 12, '10': 'avatar'},
    {'1': 'rating', '3': 4, '4': 1, '5': 5, '10': 'rating'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhYKBmF2YXRhchgDIA'
    'EoDFIGYXZhdGFyEhYKBnJhdGluZxgEIAEoBVIGcmF0aW5n');

@$core.Deprecated('Use professorDescriptor instead')
const Professor$json = {
  '1': 'Professor',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
  ],
};

/// Descriptor for `Professor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List professorDescriptor = $convert.base64Decode(
    'CglQcm9mZXNzb3ISDgoCaWQYASABKAVSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSFgoGYXZhdG'
    'FyGAMgASgJUgZhdmF0YXI=');

@$core.Deprecated('Use reviewDescriptor instead')
const Review$json = {
  '1': 'Review',
  '2': [
    {'1': 'review_id', '3': 1, '4': 1, '5': 9, '10': 'reviewId'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'comment', '3': 3, '4': 1, '5': 9, '10': 'comment'},
    {'1': 'objectivity', '3': 4, '4': 1, '5': 2, '10': 'objectivity'},
    {'1': 'loyalty', '3': 5, '4': 1, '5': 2, '10': 'loyalty'},
    {'1': 'professionalism', '3': 6, '4': 1, '5': 2, '10': 'professionalism'},
    {'1': 'harshness', '3': 7, '4': 1, '5': 2, '10': 'harshness'},
    {'1': 'date', '3': 8, '4': 1, '5': 9, '10': 'date'},
    {'1': 'raiting', '3': 9, '4': 1, '5': 5, '10': 'raiting'},
    {'1': 'status', '3': 10, '4': 1, '5': 9, '10': 'status'},
    {'1': 'professor_id', '3': 11, '4': 1, '5': 5, '10': 'professorId'},
    {'1': 'rating', '3': 13, '4': 1, '5': 5, '10': 'rating'},
  ],
};

/// Descriptor for `Review`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reviewDescriptor = $convert.base64Decode(
    'CgZSZXZpZXcSGwoJcmV2aWV3X2lkGAEgASgJUghyZXZpZXdJZBIXCgd1c2VyX2lkGAIgASgFUg'
    'Z1c2VySWQSGAoHY29tbWVudBgDIAEoCVIHY29tbWVudBIgCgtvYmplY3Rpdml0eRgEIAEoAlIL'
    'b2JqZWN0aXZpdHkSGAoHbG95YWx0eRgFIAEoAlIHbG95YWx0eRIoCg9wcm9mZXNzaW9uYWxpc2'
    '0YBiABKAJSD3Byb2Zlc3Npb25hbGlzbRIcCgloYXJzaG5lc3MYByABKAJSCWhhcnNobmVzcxIS'
    'CgRkYXRlGAggASgJUgRkYXRlEhgKB3JhaXRpbmcYCSABKAVSB3JhaXRpbmcSFgoGc3RhdHVzGA'
    'ogASgJUgZzdGF0dXMSIQoMcHJvZmVzc29yX2lkGAsgASgFUgtwcm9mZXNzb3JJZBIWCgZyYXRp'
    'bmcYDSABKAVSBnJhdGluZw==');

