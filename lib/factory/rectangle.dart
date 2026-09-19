import 'package:design_patterns_clean_architecture/factory/shape.dart';

class Rectangle extends Shape {
  @override
  void revealMe() {
    print('I am a Rectangle');
  }
}
