// ignore_for_file: avoid_print

import 'package:design_patterns_clean_architecture/solid/payment.dart';

// CreditPayment - Single Responsibility Principle
// Handles only credit payment logic
class CreditPayment implements Payment {
  @override
  void pay() {
    creditPayment();
  }

  // Specific credit payment method as required by task
  void creditPayment() {
    print('Payment made with credit card');
  }
}
