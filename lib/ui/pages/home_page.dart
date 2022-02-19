part of 'pages.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);
  final HomeController _controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 26,
          decoration: const BoxDecoration(color: mainColor),
        ),
        SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.35 + (62 + 14),
                  child: Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.35,
                        decoration: const BoxDecoration(
                            color: mainColor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            )),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 142,
                              child: CarouselSlider(
                                items: listSlider,
                                carouselController:
                                    _controller.sliderController.value,
                                options: CarouselOptions(
                                    autoPlay: false,
                                    pageSnapping: true,
                                    viewportFraction: 1,
                                    height: 142,
                                    enlargeCenterPage: false,
                                    aspectRatio: 2.0,
                                    onPageChanged: (index, reason) {
                                      _controller.setIndex(index);
                                    }),
                              ),
                            ),
                            SizedBox(
                              height: 14,
                              child: Obx(
                                () => Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: listSlider.asMap().entries.map(
                                    (entry) {
                                      return GestureDetector(
                                        onTap: () => _controller
                                            .sliderController.value
                                            .animateToPage(entry.key),
                                        child: Container(
                                          width: 8.0,
                                          height: 8.0,
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 3.0, horizontal: 4.0),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: secondaryColor),
                                            color: _controller
                                                        .currentIndex.value ==
                                                    entry.key
                                                ? secondaryColor
                                                : Colors.transparent,
                                          ),
                                        ),
                                      );
                                    },
                                  ).toList(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SafeArea(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                        "assets/svg/logo_leaf.svg",
                                        color: Colors.white,
                                        width: 24,
                                        height: 24,
                                      ),
                                      const SizedBox(width: 12),
                                      Text(
                                        "myMental",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            ?.copyWith(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 45,
                                        width: 45,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(
                                              "assets/images/profile.jpg",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 6),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.more_vert,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Color(0xFF2C80AA),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 20,
                                      offset: Offset(0, 4),
                                    )
                                  ],
                                ),
                                child: TextField(
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(color: Colors.white),
                                  controller:
                                      _controller.searchController.value,
                                  cursorColor: greyColor,
                                  decoration: InputDecoration(
                                    prefixIcon: const Icon(Icons.search,
                                        color: Colors.white),
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        ?.copyWith(color: greyColor),
                                    hintText:
                                        "Cari psikolog, obat atau lainnya",
                                    border: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white10,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0))),
                                    enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white10,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0))),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(22, 18, 22, 0),
                  child: Text(
                    "Layanan Kami",
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ItemServices(
                        startColor: secondaryColor,
                        endColor: Colors.white,
                        illustrationPath: "assets/svg/il_consultation.svg",
                        text: "Konsultasi Virtual",
                        onClick: () {},
                      ),
                      ItemServices(
                        startColor: secondaryColor,
                        endColor: Colors.white,
                        illustrationPath: "assets/svg/il_webinar.svg",
                        text: "Webinar",
                        onClick: () {},
                      ),
                      ItemServices(
                        startColor: secondaryColor,
                        endColor: Colors.white,
                        illustrationPath: "assets/svg/il_pharmacy.svg",
                        text: "Apotek Kesehatan",
                        onClick: () {},
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ItemServices(
                        startColor: mainColor,
                        endColor: Colors.white,
                        illustrationPath: "assets/svg/il_test.svg",
                        text: "Tes MBTI & Psikologi",
                        onClick: () {},
                      ),
                      ItemServices(
                        startColor: mainColor,
                        endColor: Colors.white,
                        illustrationPath: "assets/svg/il_membership.svg",
                        text: "Membership",
                        onClick: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 110),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
