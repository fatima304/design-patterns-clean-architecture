import 'package:design_patterns_clean_architecture/solid/payment.dart';

// PaymentService - Dependency Inversion Principle
// Depends on Payment abstraction, injected via constructor
// Open/Closed Principle - closed for modification, open for extension
class PaymentService {
  final Payment payment;

  PaymentService(this.payment);

  void makePayment() {
    payment.pay();
  }
}
