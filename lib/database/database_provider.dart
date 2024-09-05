import 'package:drift/drift.dart';
import 'database.dart';
import 'provider.dart';

class DatabaseProviderImpl implements DatabaseProvider {
  DatabaseProviderImpl({required this.database});

  final AppDatabase database;

  @override
  Stream<List<Professor>> findProfessorByName(String name) {
    return (database.select(database.professors)..where((u) => u.name.contains(name))).watch();
  }

  @override
  Stream<List<Professor>> getAllProfessors() {
    return database.select(database.professors).watch();
  }

  @override
  Stream<List<Review>> getAllReviewByUser(int userId) {
    return (database.select(database.reviews)
          ..where((u) => u.id.equals(userId)))
        .watch();
  }

  @override
  Stream<List<Review>> getAllReviewsByProfessor(int professorId) {
    return (database.select(database.reviews)
          ..where((u) => u.professorId.equals(professorId)))
        .watch();
  }

  @override
  Future<void> sendReview(Review review) {
    return database.into(database.reviews).insert(review);
  }
}
