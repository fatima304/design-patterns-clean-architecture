import 'package:design_patterns_clean_architecture/clean_architecture/data/data_source/user_data_source.dart';
import 'package:design_patterns_clean_architecture/clean_architecture/domain/entities/user.dart';
import 'package:design_patterns_clean_architecture/clean_architecture/domain/repository/user_repository.dart';

// UserRepositoryImpl - Data layer implementation of the domain repository contract
// Implements the business logic for data access
class UserRepositoryImpl implements UserRepository {
  final UserDataSource dataSource;

  UserRepositoryImpl(this.dataSource);

  @override
  Future<List<User>> getUsers() {
    return dataSource.getUsers();
  }
}
