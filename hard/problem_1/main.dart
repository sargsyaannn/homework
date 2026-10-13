abstract class Payment {
  double calculateFee(double amount);
}

class CardPayment extends Payment {
  @override
  double calculateFee(double amount) => amount * 0.02;
}

class CashPayment extends Payment {
  @override
  double calculateFee(double amount) => 0;
}

class CryptoPayment extends Payment {
  @override
  double calculateFee(double amount) => amount * 0.05;
}

double calculateTotal(Payment payment, double amount) {
  return amount + payment.calculateFee(amount);
}

void main() {
  print('Քարտով՝ ${calculateTotal(CardPayment(), 10000)}');
  print('Կանխիկ՝ ${calculateTotal(CashPayment(), 10000)}');
  print('Կրիպտոյով՝ ${calculateTotal(CryptoPayment(), 10000)}');
}
