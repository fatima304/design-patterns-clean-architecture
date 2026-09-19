import 'package:design_patterns_clean_architecture/singleton/database.dart';

// SingletonClient - Demonstrates Singleton pattern usage
// Verifies that both calls to createDatabase() return the same instance
class SingletonClient {
  void testDatabase() {
    final database1 = Database.createDatabase();
    final database2 = Database.createDatabase();

    // Both should be the same instance (true)
    print(database1 == database2);
  }
}
