import 'package:flutter/material.dart';

// UsersEmpty - Displays a friendly empty state message
class UsersEmpty extends StatelessWidget {
  const UsersEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'No users found',
        style: TextStyle(fontSize: 16, color: Colors.grey),
      ),
    );
  }
}
