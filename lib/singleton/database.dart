// Database class - Singleton pattern implementation
// Ensures only one instance is ever created
class Database {
  // Private static instance variable - the single instance shared by the whole application
  static Database? _instance;

  // Private constructor - prevents external instantiation
  Database._();

  // Static factory method - returns existing instance or creates new one
  static Database createDatabase() {
    _instance ??= Database._();

    return _instance!;
  }
}
