import 'package:design_patterns_clean_architecture/solid/cash_payment.dart';
import 'package:design_patterns_clean_architecture/solid/credit_payment.dart';
import 'package:design_patterns_clean_architecture/solid/payment_service.dart';

// SolidClient - Demonstrates all five SOLID principles
// Liskov Substitution Principle - CashPayment and CreditPayment are interchangeable
// Interface Segregation Principle - Payment interface is minimal with only pay() method
class SolidClient {
  void makePayments() {
    final cashPaymentService = PaymentService(CashPayment());
    cashPaymentService.makePayment();

    final creditPaymentService = PaymentService(CreditPayment());
    creditPaymentService.makePayment();
  }
}
