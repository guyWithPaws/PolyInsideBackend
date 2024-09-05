import 'package:grpc/src/server/call.dart';
import 'package:poly_inside_server/generated/protobufs/service.pbgrpc.dart';

class GRPCService extends SearchServiceBase{
  @override
  Future<AddReviewResponse> addReview(ServiceCall call, AddReviewRequest request) {
    // TODO: implement addReview
    throw UnimplementedError();
  }

  @override
  Future<ChangeStatusResponse> changeStatus(ServiceCall call, ChangeStatusRequest request) {
    // TODO: implement changeStatus
    throw UnimplementedError();
  }

  @override
  Stream<Professor> getListProfessor(ServiceCall call, ListProfessorRequest request) {
    // TODO: implement getListProfessor
    throw UnimplementedError();
  }

  @override
  Future<User> getUserInfoByUserId(ServiceCall call, UserInfoByUserIdRequest request) {
    // TODO: implement getUserInfoByUserId
    throw UnimplementedError();
  }

  @override
  Stream<Review> pendingReviews(ServiceCall call, PendingReviewsRequest request) {
    // TODO: implement pendingReviews
    throw UnimplementedError();
  }

  @override
  Stream<Review> professorReviews(ServiceCall call, ReviewsByProfessorIdRequest request) {
    // TODO: implement professorReviews
    throw UnimplementedError();
  }

  @override
  Stream<Review> reviewsFromUser(ServiceCall call, ReviewsByUserId request) {
    // TODO: implement reviewsFromUser
    throw UnimplementedError();
  }

}