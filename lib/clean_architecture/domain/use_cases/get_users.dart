import 'package:design_patterns_clean_architecture/clean_architecture/domain/repository/user_repository.dart';

import '../entities/user.dart';

// GetUsers - Domain layer use case
// Encapsulates a single business action with clear responsibility
class GetUsers {
  final UserRepository repository;

  GetUsers(this.repository);

  Future<List<User>> call() {
    return repository.getUsers();
  }
}
