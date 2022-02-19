part of 'pages.dart';

class PharmacyPaymentPage extends StatelessWidget {
  const PharmacyPaymentPage({Key? key}) : super(key: key);
  static const String routeName = '/pharmacy_checkout_page';
  final int _deliveryFee = 6000;

  @override
  Widget build(BuildContext context) {
    int _totalPayment = 0;
    for (var element in dummyMedicine) {
      _totalPayment += element.price;
    }
    final AppBar appbar = AppBar();
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: SafeArea(
                  child: Container(
                    height: appbar.preferredSize.height + 16,
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onTap: () {
                            Get.back();
                          },
                        ),
                        const SizedBox(width: 16.0),
                        Text(
                          "Apotek Kesehatan",
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: dummyMedicine.length,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    var medicine = dummyMedicine[index];
                    return Container(
                      margin: index != 0 && index != dummyMedicine.length - 1
                          ? const EdgeInsets.fromLTRB(24, 20, 24, 0)
                          : index == dummyMedicine.length - 1
                              ? const EdgeInsets.fromLTRB(24, 20, 24, 150)
                              : const EdgeInsets.fromLTRB(24, 0, 24, 0),
                      child: ItemMedicineCheckout(
                        medicine: medicine,
                      ),
                    );
                  }),
                ),
              )
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 8.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/check_circle.svg",
                      color: greenColor,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Biaya Pengiriman",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                    ),
                    Text(
                      "Rp ${_deliveryFee.toString().replaceAllMapped(regMoney, (Match match) => '${match[1]}.')}",
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 82,
                margin: const EdgeInsets.fromLTRB(12, 0, 12, 15),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  gradient: LinearGradient(
                    colors: [mainColor, Colors.black],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total Pembayaran",
                            style:
                                Theme.of(context).textTheme.bodyText2?.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                          ),
                          Text(
                            "Rp ${_totalPayment.toString().replaceAllMapped(regMoney, (Match match) => '${match[1]}.')}",
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet<int>(
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (BuildContext context) {
                              return Popover(
                                child: BottomSheetPharmacyPayment(
                                  totalItems: dummyMedicine.length,
                                  totalPayment: _totalPayment,
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          width: 142,
                          padding: const EdgeInsets.fromLTRB(9, 5, 9, 5),
                          decoration: BoxDecoration(
                            border: Border.all(color: greyColor),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
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
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Konfirmasi Pembayaran",
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        ?.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                const Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
