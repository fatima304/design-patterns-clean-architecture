// ignore_for_file: avoid_print

import 'package:design_patterns_clean_architecture/factory/shape_factory.dart';

// ShapeClient - Demonstrates the Factory pattern usage
// Shows how to create objects without specifying their concrete classes
class ShapeClient {
  void showShapes() {
    final factory = ShapeFactory();

    final circle = factory.getShape('circle');
    final rectangle = factory.getShape('rectangle');
    final square = factory.getShape('square');

    circle.revealMe();
    rectangle.revealMe();
    square.revealMe();
  }
}
