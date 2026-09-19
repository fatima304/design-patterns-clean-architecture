// ignore_for_file: avoid_print

import 'package:design_patterns_clean_architecture/factory/shape.dart';

// Circle - Concrete implementation of Shape
// Part of the Factory pattern - one of the products the factory can create
class Circle extends Shape {
  @override
  void revealMe() {
    print('You chose to print circle');
  }
}
