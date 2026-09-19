import 'package:design_patterns_clean_architecture/clean_architecture/presentation/manager/cubit/user_cubit.dart';
import 'package:design_patterns_clean_architecture/clean_architecture/presentation/manager/cubit/user_state.dart';
import 'package:design_patterns_clean_architecture/clean_architecture/presentation/widgets/user_card.dart';
import 'package:design_patterns_clean_architecture/clean_architecture/presentation/widgets/users_empty.dart';
import 'package:design_patterns_clean_architecture/clean_architecture/presentation/widgets/users_error.dart';
import 'package:design_patterns_clean_architecture/clean_architecture/presentation/widgets/users_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../di/injection.dart';

// UsersScreen - Presentation layer UI
// Connects BlocBuilder to appropriate state widgets and builds the users list
class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<UserCubit>()..fetchUsers(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Users'), elevation: 2),
        body: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            if (state is UserLoading) {
              return const UsersLoading();
            }

            if (state is UserLoaded) {
              if (state.users.isEmpty) {
                return const UsersEmpty();
              }

              return ListView.separated(
                padding: const EdgeInsets.all(16),
                itemCount: state.users.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  return UserCard(user: state.users[index]);
                },
              );
            }

            if (state is UserError) {
              return UsersError(
                message: state.message,
                onRetry: () => context.read<UserCubit>().fetchUsers(),
              );
            }

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
