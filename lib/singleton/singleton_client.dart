import 'package:design_patterns_clean_architecture/singleton/database.dart';

class SingletonClient {
  void testDatabase() {
    final database1 = Database.createDatabase();
    final database2 = Database.createDatabase();

    print(database1 == database2);
  }
}