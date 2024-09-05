//
//  Generated code. Do not modify.
//  source: protobufs/service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'service.pb.dart' as $0;

export 'service.pb.dart';

@$pb.GrpcServiceName('SearchService')
class SearchServiceClient extends $grpc.Client {
  static final _$getUserInfoByUserId = $grpc.ClientMethod<$0.UserInfoByUserIdRequest, $0.User>(
      '/SearchService/GetUserInfoByUserId',
      ($0.UserInfoByUserIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$getListProfessor = $grpc.ClientMethod<$0.ListProfessorRequest, $0.Professor>(
      '/SearchService/GetListProfessor',
      ($0.ListProfessorRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Professor.fromBuffer(value));
  static final _$professorReviews = $grpc.ClientMethod<$0.ReviewsByProfessorIdRequest, $0.Review>(
      '/SearchService/ProfessorReviews',
      ($0.ReviewsByProfessorIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Review.fromBuffer(value));
  static final _$reviewsFromUser = $grpc.ClientMethod<$0.ReviewsByUserId, $0.Review>(
      '/SearchService/ReviewsFromUser',
      ($0.ReviewsByUserId value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Review.fromBuffer(value));
  static final _$addReview = $grpc.ClientMethod<$0.AddReviewRequest, $0.AddReviewResponse>(
      '/SearchService/AddReview',
      ($0.AddReviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AddReviewResponse.fromBuffer(value));
  static final _$pendingReviews = $grpc.ClientMethod<$0.PendingReviewsRequest, $0.Review>(
      '/SearchService/PendingReviews',
      ($0.PendingReviewsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Review.fromBuffer(value));
  static final _$changeStatus = $grpc.ClientMethod<$0.ChangeStatusRequest, $0.ChangeStatusResponse>(
      '/SearchService/ChangeStatus',
      ($0.ChangeStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ChangeStatusResponse.fromBuffer(value));

  SearchServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.User> getUserInfoByUserId($0.UserInfoByUserIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserInfoByUserId, request, options: options);
  }

  $grpc.ResponseStream<$0.Professor> getListProfessor($0.ListProfessorRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getListProfessor, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$0.Review> professorReviews($0.ReviewsByProfessorIdRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$professorReviews, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$0.Review> reviewsFromUser($0.ReviewsByUserId request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$reviewsFromUser, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.AddReviewResponse> addReview($0.AddReviewRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addReview, request, options: options);
  }

  $grpc.ResponseStream<$0.Review> pendingReviews($0.PendingReviewsRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$pendingReviews, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.ChangeStatusResponse> changeStatus($0.ChangeStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeStatus, request, options: options);
  }
}

@$pb.GrpcServiceName('SearchService')
abstract class SearchServiceBase extends $grpc.Service {
  $core.String get $name => 'SearchService';

  SearchServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.UserInfoByUserIdRequest, $0.User>(
        'GetUserInfoByUserId',
        getUserInfoByUserId_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserInfoByUserIdRequest.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListProfessorRequest, $0.Professor>(
        'GetListProfessor',
        getListProfessor_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.ListProfessorRequest.fromBuffer(value),
        ($0.Professor value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ReviewsByProfessorIdRequest, $0.Review>(
        'ProfessorReviews',
        professorReviews_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.ReviewsByProfessorIdRequest.fromBuffer(value),
        ($0.Review value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ReviewsByUserId, $0.Review>(
        'ReviewsFromUser',
        reviewsFromUser_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.ReviewsByUserId.fromBuffer(value),
        ($0.Review value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddReviewRequest, $0.AddReviewResponse>(
        'AddReview',
        addReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddReviewRequest.fromBuffer(value),
        ($0.AddReviewResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PendingReviewsRequest, $0.Review>(
        'PendingReviews',
        pendingReviews_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.PendingReviewsRequest.fromBuffer(value),
        ($0.Review value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChangeStatusRequest, $0.ChangeStatusResponse>(
        'ChangeStatus',
        changeStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ChangeStatusRequest.fromBuffer(value),
        ($0.ChangeStatusResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.User> getUserInfoByUserId_Pre($grpc.ServiceCall call, $async.Future<$0.UserInfoByUserIdRequest> request) async {
    return getUserInfoByUserId(call, await request);
  }

  $async.Stream<$0.Professor> getListProfessor_Pre($grpc.ServiceCall call, $async.Future<$0.ListProfessorRequest> request) async* {
    yield* getListProfessor(call, await request);
  }

  $async.Stream<$0.Review> professorReviews_Pre($grpc.ServiceCall call, $async.Future<$0.ReviewsByProfessorIdRequest> request) async* {
    yield* professorReviews(call, await request);
  }

  $async.Stream<$0.Review> reviewsFromUser_Pre($grpc.ServiceCall call, $async.Future<$0.ReviewsByUserId> request) async* {
    yield* reviewsFromUser(call, await request);
  }

  $async.Future<$0.AddReviewResponse> addReview_Pre($grpc.ServiceCall call, $async.Future<$0.AddReviewRequest> request) async {
    return addReview(call, await request);
  }

  $async.Stream<$0.Review> pendingReviews_Pre($grpc.ServiceCall call, $async.Future<$0.PendingReviewsRequest> request) async* {
    yield* pendingReviews(call, await request);
  }

  $async.Future<$0.ChangeStatusResponse> changeStatus_Pre($grpc.ServiceCall call, $async.Future<$0.ChangeStatusRequest> request) async {
    return changeStatus(call, await request);
  }

  $async.Future<$0.User> getUserInfoByUserId($grpc.ServiceCall call, $0.UserInfoByUserIdRequest request);
  $async.Stream<$0.Professor> getListProfessor($grpc.ServiceCall call, $0.ListProfessorRequest request);
  $async.Stream<$0.Review> professorReviews($grpc.ServiceCall call, $0.ReviewsByProfessorIdRequest request);
  $async.Stream<$0.Review> reviewsFromUser($grpc.ServiceCall call, $0.ReviewsByUserId request);
  $async.Future<$0.AddReviewResponse> addReview($grpc.ServiceCall call, $0.AddReviewRequest request);
  $async.Stream<$0.Review> pendingReviews($grpc.ServiceCall call, $0.PendingReviewsRequest request);
  $async.Future<$0.ChangeStatusResponse> changeStatus($grpc.ServiceCall call, $0.ChangeStatusRequest request);
}
