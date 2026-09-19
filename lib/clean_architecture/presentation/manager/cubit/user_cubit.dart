import 'package:design_patterns_clean_architecture/clean_architecture/domain/use_cases/get_users.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'user_state.dart';

// UserCubit - Presentation layer state management
// Manages user data state using BLoC pattern with dependency injection
class UserCubit extends Cubit<UserState> {
  final GetUsers getUsers;

  UserCubit(this.getUsers) : super(UserInitial());

  Future<void> fetchUsers() async {
    emit(UserLoading());

    try {
      final users = await getUsers();
      emit(UserLoaded(users));
    } catch (e) {
      emit(UserError(e.toString()));
    }
  }
}
