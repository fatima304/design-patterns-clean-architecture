// ignore_for_file: avoid_print

import 'package:design_patterns_clean_architecture/builder/user_builder.dart';

// UserClient - Demonstrates the Builder pattern usage
// Shows how to create a User object with partial data (required + optional fields)
class UserClient {
  void buildUser() {
    final userBuilder = UserBuilder();

    // Builder pattern allows flexible object creation with partial data
    final user = userBuilder
        .setFirstName('Fatma')
        .setLastName('Atef')
        .setAge(25)
        .build();

    print(user);
  }
}
