part of 'widgets.dart';

class ItemTransactionHistory extends StatelessWidget {
  const ItemTransactionHistory({
    Key? key,
    required this.transaction,
  }) : super(key: key);
  final TransactionEntity transaction;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Icon(
            transaction.isSuccess
                ? Icons.check_circle_rounded
                : Icons.cancel_rounded,
            color: transaction.isSuccess ? greenColor : redColor,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 11),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.isSuccess
                      ? "Transaksi berhasil"
                      : "Transaksi gagal",
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  transaction.transactionType == TransactionType.Consultation
                      ? "Pembayaran Konsultasi Virtual"
                      : transaction.transactionType == TransactionType.Webinar
                          ? "Pembayaran Webinar"
                          : transaction.transactionType ==
                                  TransactionType.Medicine
                              ? "Pembayaran Obat"
                              : "Pembayaran Membership",
                  style: Theme.of(context).textTheme.caption?.copyWith(
                        color: const Color(0xFF959595),
                      ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Rp ${transaction.amount}",
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset(
                transaction.paymentMethod == TransactionPaymentMethod.GoPay
                    ? "assets/svg/logo_gopay.svg"
                    : transaction.paymentMethod ==
                            TransactionPaymentMethod.PayPal
                        ? "assets/svg/logo_paypal.svg"
                        : transaction.paymentMethod ==
                                TransactionPaymentMethod.ShopeePay
                            ? "assets/svg/logo_shopeepay.svg"
                            : transaction.paymentMethod ==
                                    TransactionPaymentMethod.CreditCard
                                ? "assets/svg/logo_mastercard.svg"
                                : "assets/svg/logo_ovo.svg",
              ),
              Text(
                "17 Februari 2022",
                style: Theme.of(context).textTheme.caption?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF959595)),
              )
            ],
          ),
        )
      ],
    );
  }
}
