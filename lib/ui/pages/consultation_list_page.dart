part of 'pages.dart';

class ConsultationListPage extends GetView<ConsultationListController> {
  const ConsultationListPage({Key? key}) : super(key: key);
  static const String routeName = '/consultation_page';

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
                      "Konsultasi Virtual",
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
                hintText: "Cari Psikolog",
                border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: secondaryColor,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: secondaryColor,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
              itemCount: dummyPsycholog.length,
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                var psycholog = dummyPsycholog[index];
                return Container(
                  margin: index != 0
                      ? const EdgeInsets.fromLTRB(24, 20, 24, 0)
                      : const EdgeInsets.fromLTRB(24, 0, 24, 0),
                  child: ItemPsycholog(
                    psycholog: psycholog,
                    onButtonClick: () {
                      Get.toNamed(
                        ConsultationDetailPage.routeName,
                        arguments: {
                          'psycholog': psycholog,
                        },
                      );
                    },
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
