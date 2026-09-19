import '../models/user_model.dart';

// UserDataSource - Data layer
// Responsible for providing raw data from external sources
class UserDataSource {
  Future<List<UserModel>> getUsers() async {
    // Simulating data fetch from external source
    return const [
      UserModel(id: 1, name: 'Fatma Atef', email: 'fatmaatef@gmail.com'),
      UserModel(id: 2, name: 'Aya Said', email: 'ayasaid@gmail.com'),
      UserModel(id: 3, name: 'Rana Yousry', email: 'ranayousry@gmail.com'),
    ];
  }
}
