import 'package:poly_inside_server/generated/protobufs/service.pb.dart';

abstract interface class DatabaseProvider {
  Future<User> getUserByUserId(int userId);
  Stream<List<Professor>> getAllProfessors();
  Stream<List<Review>> getAllReviewsByProfessor(int professorId);
  Stream<List<Professor>> findProfessorByName(String name);
  Stream<List<Review>> getAllReviewByUser(int userId);
  Future<void> sendReview(Review review);
}
