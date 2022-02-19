part of 'models.dart';

class TransactionEntity {
  int amount;
  bool isSuccess;
  TransactionPaymentMethod paymentMethod;
  TransactionType transactionType;

  TransactionEntity({
    required this.amount,
    required this.isSuccess,
    required this.paymentMethod,
    required this.transactionType,
  });
}

enum TransactionPaymentMethod {
  GoPay,
  PayPal,
  ShopeePay,
  CreditCard,
  Ovo,
}
enum TransactionType {
  Consultation,
  Webinar,
  Medicine,
  Membership,
}
