import 'package:design_patterns_clean_architecture/factory/shape.dart';

// Square - Concrete implementation of Shape
// Part of the Factory pattern - one of the products the factory can create
class Square extends Shape {
  @override
  void revealMe() {
    print('You chose to print square');
  }
}
