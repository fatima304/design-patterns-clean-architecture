import 'package:design_patterns_clean_architecture/builder/user_builder.dart';

class UserClient {
  void buildUser() {
    final userBuilder = UserBuilder();

    final user = userBuilder.setFirstName('Fatma').setLastName('Atef').build();

    // ignore: avoid_print
    print(user);
  }
}
