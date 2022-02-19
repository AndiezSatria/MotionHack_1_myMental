part of 'pages.dart';

class PharmacyPage extends GetView<ConsultationListController> {
  const PharmacyPage({Key? key}) : super(key: key);
  static const String routeName = '/pharmacy_page';

  @override
  Widget build(BuildContext context) {
    final AppBar appbar = AppBar();
    return Scaffold(
      body: Column(
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
                      style: Theme.of(context).textTheme.headline6?.copyWith(
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
            padding: const EdgeInsets.fromLTRB(28, 16, 28, 0),
            child: TextField(
              style: Theme.of(context).textTheme.bodyText1,
              controller: controller.searchController.value,
              cursorColor: greyColor,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search, color: greyColor),
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(color: greyColor),
                hintText: "Cari Obat",
                border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: greyColor,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: greyColor,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child:
                // Container(),
                GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 0,
              mainAxisSpacing: 16,
              childAspectRatio: 0.8,
              children: dummyMedicine
                  .map((med) => ItemMedicine(
                        medicine: med,
                        onButtonClick: () {},
                      ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
