import 'package:poly_inside_server/database/database.dart';

abstract interface class DatabaseProvider{
  Stream<List<Professor>> getAllProfessors();
  Stream<List<Review>> getAllReviewsByProfessor(int professorId);
  Stream<List<Professor>> findProfessorByName(String name);
  Stream<List<Review>> getAllReviewByUser(int userId);
  Future<void> sendReview(Review review);
}