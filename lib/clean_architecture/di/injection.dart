import 'package:design_patterns_clean_architecture/clean_architecture/data/data_source/user_data_source.dart';
import 'package:design_patterns_clean_architecture/clean_architecture/data/repository/user_repository_impl.dart';
import 'package:design_patterns_clean_architecture/clean_architecture/domain/repository/user_repository.dart';
import 'package:design_patterns_clean_architecture/clean_architecture/presentation/manager/cubit/user_cubit.dart';
import 'package:get_it/get_it.dart';

import '../domain/use_cases/get_users.dart';

// Dependency Injection configuration using GetIt
// Registers all dependencies in the correct order following dependency flow
final getIt = GetIt.instance;

void setupDependencies() {
  // Data layer - single instance
  getIt.registerLazySingleton<UserDataSource>(() => UserDataSource());

  // Repository - binds abstraction to implementation
  getIt.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(getIt<UserDataSource>()),
  );

  // Use case - business logic
  getIt.registerLazySingleton<GetUsers>(
    () => GetUsers(getIt<UserRepository>()),
  );

  // Cubit - presentation layer state management (factory for new instances)
  getIt.registerFactory<UserCubit>(() => UserCubit(getIt<GetUsers>()));
}
