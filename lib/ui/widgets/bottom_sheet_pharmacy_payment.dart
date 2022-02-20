part of 'widgets.dart';

class BottomSheetPharmacyPayment extends StatefulWidget {
  const BottomSheetPharmacyPayment({
    Key? key,
    required this.totalItems,
    required this.totalPayment,
  }) : super(key: key);
  final int totalItems;
  final int totalPayment;

  @override
  _BottomSheetPharmacyPaymentState createState() =>
      _BottomSheetPharmacyPaymentState();
}

class _BottomSheetPharmacyPaymentState
    extends State<BottomSheetPharmacyPayment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Alamat Pengiriman",
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 6, 10, 6),
            decoration: const BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jakarta Selatan",
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        "Taman Menteng  Blok A6 No. 24 sektor 31",
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.location_on_outlined,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            "Rincian",
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.fromLTRB(10, 6, 10, 6),
            decoration: const BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Text(
              "Lantai 26, kamar 302",
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: Colors.white,
                    fontSize: 12,
                  ),
            ),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "${widget.totalItems} items",
                          style:
                              Theme.of(context).textTheme.bodyText2?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                        ),
                        const SizedBox(width: 8.0),
                        Container(
                          width: 7,
                          height: 7,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Rp ${widget.totalPayment.toString().replaceAllMapped(regMoney, (Match match) => '${match[1]}.')}",
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Get.offNamedUntil(
                        PharmacyPage.routeName, (route) => route.isFirst);
                  },
                  child: Container(
                    height: 35,
                    padding: const EdgeInsets.fromLTRB(9, 5, 9, 5),
                    decoration: BoxDecoration(
                      border: Border.all(color: greyColor),
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      color: secondaryColor,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4,
                          color: Colors.black26,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Lakukan Pembayaran",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.caption?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
