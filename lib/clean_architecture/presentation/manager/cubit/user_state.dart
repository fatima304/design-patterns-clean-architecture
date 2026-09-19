import 'package:design_patterns_clean_architecture/clean_architecture/domain/entities/user.dart';

// UserState - Presentation layer state management
// Defines all possible states for user data fetching
abstract class UserState {}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserLoaded extends UserState {
  final List<User> users;

  UserLoaded(this.users);
}

class UserError extends UserState {
  final String message;

  UserError(this.message);
}
