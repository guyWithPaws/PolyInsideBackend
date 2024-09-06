// ignore: implementation_imports
import 'package:grpc/src/server/call.dart';
import 'package:poly_inside_server/database/database_provider.dart' as db;
import 'package:poly_inside_server/extension.dart';
import 'package:poly_inside_server/generated/protobufs/service.pbgrpc.dart';

class GRPCService extends SearchServiceBase {
  GRPCService({required this.provider});

  final db.DatabaseProviderImpl provider;

  @override
  Future<AddReviewResponse> addReview(
      ServiceCall call, AddReviewRequest request) async {
    await provider.sendReview(request.review.castFromGRPCToDrift());
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
          ..loyalty = professor.loyalty
          ..objectivity = professor.objectivity
          ..name = professor.name
          ..professionalism = professor.professionalism
          ..harshness = professor.harshness;
      }
    }
  }

  @override
  Future<User> getUserInfoByUserId(
      ServiceCall call, UserInfoByUserIdRequest request) {
    // TODO: implement getUserInfoByUserId
    throw UnimplementedError();
  }

  @override
  Stream<Review> pendingReviews(
      ServiceCall call, PendingReviewsRequest request) {
    // TODO: implement pendingReviews
    throw UnimplementedError();
  }

  @override
  Stream<Review> professorReviews(
      ServiceCall call, ReviewsByProfessorIdRequest request) async* {
    final stream = provider.getAllReviewsByProfessor(request.id);
    await for (final list in stream) {
      for (final e in list) {
        yield Review()
          ..comment = e.comment
          ..harshness = e.harshness
          ..loyalty = e.loyalty
          ..objectivity = e.objectivity
          ..professionalism = e.professionalism
          ..date = e.date
          ..reviewId = e.id
          ..rating = e.rating
          ..status = e.status
          ..userId = e.userId;
      }
    }
  }

  @override
  Stream<Review> reviewsFromUser(
      ServiceCall call, ReviewsByUserId request) async* {
    final stream = provider.getAllReviewByUser(request.id);
    await for (final list in stream) {
      for (final e in list) {
        yield Review()
          ..comment = e.comment
          ..harshness = e.harshness
          ..loyalty = e.loyalty
          ..objectivity = e.objectivity
          ..professionalism = e.professionalism
          ..date = e.date
          ..reviewId = e.id
          ..rating = e.rating
          ..status = e.status
          ..userId = e.userId;
      }
    }
  }
}
