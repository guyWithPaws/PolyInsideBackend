import 'package:grpc/src/server/call.dart';
import 'package:poly_inside_server/database/database_provider.dart' as db;
import 'package:poly_inside_server/generated/protobufs/service.pbgrpc.dart';

class GRPCService extends SearchServiceBase {
  GRPCService({required this.provider});

  final db.DatabaseProviderImpl provider;

  @override
  Future<AddReviewResponse> addReview(
      ServiceCall call, AddReviewRequest request) {
    // TODO: implement addReview
    throw UnimplementedError();
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
    final professors = provider.getAllProfessors();
    await for (var a in professors) {
      yield* Stream.fromIterable(
        a.map(
          (e) => Professor()
            ..id = e.id
            ..avatar = e.avatar
            ..loyalty = e.loyalty
            ..objectivity = e.objectivity
            ..name = e.name
            ..professionalism = e.professionalism
            ..harshness = e.harshness,
        ),
      );
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
      ServiceCall call, ReviewsByProfessorIdRequest request) {
    // TODO: implement professorReviews
    throw UnimplementedError();
  }

  @override
  Stream<Review> reviewsFromUser(ServiceCall call, ReviewsByUserId request) {
    // TODO: implement reviewsFromUser
    throw UnimplementedError();
  }
}
