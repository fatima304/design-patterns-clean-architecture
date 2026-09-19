import 'package:design_patterns_clean_architecture/builder/user.dart';

class UserBuilder {
  String? firstName;
  String? lastName;
  int? age;
  String? phone;

  UserBuilder();

  UserBuilder setFirstName(String firstName) {
    this.firstName = firstName;
    return this;
  }

  UserBuilder setLastName(String lastName) {
    this.lastName = lastName;
    return this;
  }

  UserBuilder setAge(int age) {
    this.age = age;
    return this;
  }

  UserBuilder setPhone(String phone) {
    this.phone = phone;
    return this;
  }

  User build() {
    if (firstName == null || lastName == null) {
      throw Exception('First name and last name are required');
    }
    return User(
      firstName: firstName!,
      lastName: lastName!,
      age: age,
      phone: phone,
    );
  }
}
