// User entity - Domain layer business object
// Represents the core business concept independent of data representation
class User {
  final int id;
  final String name;
  final String email;

  const User({required this.id, required this.name, required this.email});
}
