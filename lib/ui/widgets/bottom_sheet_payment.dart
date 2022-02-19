part of 'widgets.dart';

class BottomSheetPayment extends StatefulWidget {
  const BottomSheetPayment({
    Key? key,
    required this.psycholog,
  }) : super(key: key);
  final PsychologEntity psycholog;

  @override
  BottomSheetPaymentState createState() => BottomSheetPaymentState();
}

class BottomSheetPaymentState extends State<BottomSheetPayment> {
  final TextEditingController _cardController =
      TextEditingController(text: "7326-7281-5302-6482");
  final TextEditingController _expiredController =
      TextEditingController(text: "02 / 25");
  final TextEditingController _cvvController =
      TextEditingController(text: "123");
  bool _isSaved = false;
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
            "Masukkan Detail Kartu",
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          TextField(
            controller: _cardController,
            cursorColor: Colors.black,
            enabled: false,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
            decoration: InputDecoration(
              disabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(color: greyColor),
              hintText: "Nomor Kartu",
              labelText: "Nomor Kartu",
              labelStyle: const TextStyle(color: Colors.white),
              suffixIcon:
                  Image.asset("assets/images/logo_mastercard_small.png"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextField(
                  controller: _expiredController,
                  cursorColor: Colors.black,
                  enabled: false,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                  decoration: InputDecoration(
                    disabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintStyle: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.copyWith(color: greyColor),
                    hintText: "Masa Berlaku",
                    labelText: "Masa Berlaku",
                    labelStyle: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  controller: _cvvController,
                  cursorColor: Colors.black,
                  enabled: false,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                  decoration: InputDecoration(
                    disabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintStyle: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.copyWith(color: greyColor),
                    hintText: "CVV",
                    labelText: "CVV",
                    labelStyle: const TextStyle(color: Colors.white),
                    suffixIcon: const Icon(
                      Icons.credit_card,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Radio<bool>(
                value: true,
                groupValue: _isSaved,
                toggleable: true,
                activeColor: Colors.lightBlue,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onChanged: (bool? value) {
                  setState(() {
                    _isSaved = !_isSaved;
                  });
                },
              ),
              Text(
                'Simpan kartu ini untuk transaksi selanjutnya',
                style: Theme.of(context).textTheme.caption?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Pembayaran",
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                    ),
                    Text(
                      "Rp ${widget.psycholog.price.toString().replaceAllMapped(regMoney, (Match match) => '${match[1]}.')}",
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
                    Get.offNamedUntil(ConsultationListPage.routeName,
                        (route) => route.isFirst);
                  },
                  child: Container(
                    width: 142,
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
                        "Selesai",
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
