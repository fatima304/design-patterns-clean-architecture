import '../../domain/entities/user.dart';

// UserModel - Data layer representation
// Extends domain entity with data-specific concerns
class UserModel extends User {
  const UserModel({
    required super.id,
    required super.name,
    required super.email,
  });
}
