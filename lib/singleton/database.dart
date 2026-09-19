class Database {
  // The single instance shared by the whole application.
  static Database? _instance;

  Database._();

  static Database createDatabase() {
    _instance ??= Database._();

    return _instance!;
  }
}
