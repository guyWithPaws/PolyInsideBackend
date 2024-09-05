import 'database.dart';

abstract interface class DatabaseProvider{

  Stream<Professor> getAllProfessors();
  Stream<Review> getAllReviewsByProfessor();
  Stream<Professor> findProfessorByName(String name);
  Stream<Review> getAllReviewByUser(int userId);
  Future<void> sendReview(Review review);
  
}