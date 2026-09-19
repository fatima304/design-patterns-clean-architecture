import 'package:flutter/material.dart';

import 'clean_architecture/di/injection.dart';
import 'clean_architecture/presentation/screens/users_screen.dart';

void main() {
  setupDependencies();

  runApp(const DesignPatternsApp());
}

class DesignPatternsApp extends StatelessWidget {
  const DesignPatternsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design Patterns & Clean Architecture',
      home: const UsersScreen(),
    );
  }
}
