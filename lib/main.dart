import 'package:design_patterns_clean_architecture/builder/builder_client.dart';

void main() {
  final client = UserClient();
  client.buildUser();
}
