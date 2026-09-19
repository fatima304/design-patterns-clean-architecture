import 'package:design_patterns_clean_architecture/factory/circle.dart';
import 'package:design_patterns_clean_architecture/factory/rectangle.dart';
import 'package:design_patterns_clean_architecture/factory/square.dart';
import 'package:design_patterns_clean_architecture/factory/shape.dart';

// ShapeFactory - The Factory pattern implementation
// Creates objects without specifying their concrete classes
// Uses a switch statement to return the correct Shape instance based on type
class ShapeFactory {
  Shape getShape(String type) {
    switch (type) {
      case 'circle':
        return Circle();
      case 'rectangle':
        return Rectangle();
      case 'square':
        return Square();
      default:
        throw ArgumentError('Unknown shape type');
    }
  }
}
