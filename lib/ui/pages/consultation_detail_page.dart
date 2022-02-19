part of 'pages.dart';

class ConsultationDetailPage extends GetView<ConsultationDetailController> {
  ConsultationDetailPage({Key? key}) : super(key: key);
  static const String routeName = '/consultation_detail_page';
  final PsychologEntity selectedPsycholog = Get.arguments['psycholog'];

  @override
  Widget build(BuildContext context) {
    final AppBar appbar = AppBar();
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                          "Kunsultasi Virtual",
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
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: ItemPsychologDetail(
                  psycholog: selectedPsycholog,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.fromLTRB(20, 18, 20, 0),
                padding: const EdgeInsets.fromLTRB(12, 9, 12, 15),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 6,
                      color: Colors.black26,
                      offset: Offset(1, 0),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pilih Jadwal",
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        color: Colors.white,
                        border: Border.all(color: secondaryColor),
                      ),
                      child: Obx(
                        () => Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                controller.setExpanded();
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                padding:
                                    const EdgeInsets.fromLTRB(16, 10, 16, 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Kamis, 22 Februari 2022",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          ?.copyWith(
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xFF6B6B6B),
                                          ),
                                    ),
                                    controller.isExpanded.value
                                        ? const Icon(
                                            Icons.expand_less,
                                            color: Color(0xFF6B6B6B),
                                          )
                                        : const Icon(
                                            Icons.expand_more,
                                            color: Color(0xFF6B6B6B),
                                          ),
                                  ],
                                ),
                              ),
                            ),
                            controller.isExpanded.value
                                ? Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 60,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      border: Border(
                                          top: BorderSide(
                                              color: secondaryColor)),
                                    ),
                                    child: ListView.builder(
                                      itemCount: scheduleTime.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return Obx(
                                          () => Container(
                                            margin:
                                                index != scheduleTime.length - 1
                                                    ? const EdgeInsets.fromLTRB(
                                                        12, 12, 0, 12)
                                                    : const EdgeInsets.all(12),
                                            child: ItemSelectableTime(
                                              time: scheduleTime[index],
                                              onClick: () {
                                                controller
                                                    .setSelectedTime(index);
                                              },
                                              isSelected: controller
                                                      .selectedTime.value ==
                                                  index,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 22, 20, 0),
                child: Text(
                  "Tentukan Metode Pembayarnmu",
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: greyColor),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                            gradient: const LinearGradient(
                              end: Alignment.bottomRight,
                              begin: Alignment.topLeft,
                              colors: [mainColor, Colors.white],
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Image.asset(
                              "assets/images/logo_mastercard.png",
                              height: 22,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: greyColor),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Image.asset(
                              "assets/images/logo_paypal.png",
                              height: 30,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: greyColor),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Image.asset(
                              "assets/images/logo_shopeepay.png",
                              height: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: greyColor),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Image.asset(
                              "assets/images/logo_gopay.png",
                              height: 30,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: greyColor),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Image.asset(
                              "assets/images/logo_ovo.png",
                              height: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
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
                          "Rp ${selectedPsycholog.price.toString().replaceAllMapped(regMoney, (Match match) => '${match[1]}.')}",
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
                                child: BottomSheetPayment(
                              psycholog: selectedPsycholog,
                            ));
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
          ),
        ],
      ),
    );
  }
}
