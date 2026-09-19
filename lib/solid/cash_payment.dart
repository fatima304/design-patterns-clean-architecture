import 'package:design_patterns_clean_architecture/solid/payment.dart';

// CashPayment - Single Responsibility Principle
// Handles only cash payment logic
class CashPayment implements Payment {
  @override
  void pay() {
    cashPayment();
  }

  // Specific cash payment method as required by task
  void cashPayment() {
    print('Payment made with cash');
  }
}
