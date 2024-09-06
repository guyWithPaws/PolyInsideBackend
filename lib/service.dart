// ignore: implementation_imports
import 'package:grpc/src/server/call.dart';
import 'package:poly_inside_server/database/database_provider.dart' as db;
import 'package:poly_inside_server/generated/protobufs/service.pbgrpc.dart';

class GRPCService extends SearchServiceBase {
  GRPCService({required this.provider});

  final db.DatabaseProviderImpl provider;

  @override
  Future<AddReviewResponse> addReview(
      ServiceCall call, AddReviewRequest request) async {
    await provider.sendReview(request.review);
    return AddReviewResponse();
  }

  @override
  Future<ChangeStatusResponse> changeStatus(
      ServiceCall call, ChangeStatusRequest request) {
    // TODO: implement changeStatus
    throw UnimplementedError();
  }

  @override
  Stream<Professor> getListProfessor(
      ServiceCall call, ListProfessorRequest request) async* {
    final stream = provider.getAllProfessors();
    await for (final list in stream) {
      for (final professor in list) {
        yield Professor()
          ..id = professor.id
          ..avatar = professor.avatar
          ..name = professor.name;
      }
    }
  }

  @override
  Future<User> getUserInfoByUserId(
          ServiceCall call, UserInfoByUserIdRequest request) async =>
      throw UnimplementedError();

  @override
  Stream<Review> pendingReviews(
      ServiceCall call, PendingReviewsRequest request) {
    // TODO: implement pendingReviews
    throw UnimplementedError();
  }

  @override
  Stream<Review> getReviewsByProfessorId(
      ServiceCall call, ReviewsByProfessorIdRequest request) async* {
    final stream = provider.getAllReviewsByProfessor(request.id);
    await for (final list in stream) {
      for (final e in list) {
        yield e;
      }
    }
  }

  @override
  Stream<Review> getReviewsByUserId(
      ServiceCall call, ReviewsByUserIdRequest request) async* {
    final stream = provider.getAllReviewByUser(request.id);
    await for (final list in stream) {
      for (final e in list) {
        yield e;
      }
    }
  }
}
