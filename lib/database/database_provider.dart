import 'package:drift/drift.dart';
import 'package:poly_inside_server/database/database.dart';
import 'package:poly_inside_server/database/provider.dart';
import 'package:poly_inside_server/generated/protobufs/service.pb.dart';

class DatabaseProviderImpl implements DatabaseProvider {
  DatabaseProviderImpl({required this.database});

  final AppDatabase database;

  @override
  Stream<List<Professor>> findProfessorByName(String name) =>
      (database.select(database.professors)
            ..where((u) => u.name.contains(name)))
          .watch();

  @override
  Stream<List<Professor>> getAllProfessors() =>
      database.select(database.professors).watch();

  @override
  Stream<List<Review>> getAllReviewByUser(int userId) =>
      (database.select(database.reviews)..where((u) => u.userId.equals(userId)))
          .watch();

  @override
  Stream<List<Review>> getAllReviewsByProfessor(int professorId) =>
      (database.select(database.reviews)
            ..where((u) => u.professorId.equals(professorId)))
          .watch();

  @override
  Future<void> sendReview(Review review) =>
      database.into(database.reviews).insert(
            ReviewsCompanion(
              id: Value(review.reviewId),
              rating: Value(review.rating),
              professorId: Value(review.professorId),
              professionalism: Value(review.professionalism),
              userId: Value(review.userId),
              comment: Value(review.comment),
              date: Value(review.date),
              status: const Value('pending'),
              objectivity: Value(review.objectivity),
              loyalty: Value(review.loyalty),
              harshness: Value(review.harshness),
            ),
          );

  @override
  Future<User> getUserByUserId(int userId) async =>
      (database.select(database.users)..where((u) => u.id.equals(userId)))
          .getSingle();
}
