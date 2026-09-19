import '../entities/user.dart';

// UserRepository - Domain layer abstraction
// Defines the contract for data access without implementation details
abstract class UserRepository {
  Future<List<User>> getUsers();
}
