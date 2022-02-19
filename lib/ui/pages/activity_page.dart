part of 'pages.dart';

class ActivityPage extends StatelessWidget {
  ActivityPage({Key? key}) : super(key: key);
  final ActivityController _controller = Get.find<ActivityController>();

  @override
  Widget build(BuildContext context) {
    final AppBar appbar = AppBar();
    return Column(
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
                  Text(
                    "Aktivitas",
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          height: 45,
          margin: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 24,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: mainColor),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    _controller.setSelectedNavigation(0);
                  },
                  child: Obx(
                    () => Container(
                      decoration: BoxDecoration(
                        color: _controller.selectedTab.value == 0
                            ? mainColor
                            : Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Center(
                        child: Text(
                          "Jadwal",
                          style:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
                                    color: _controller.selectedTab.value == 0
                                        ? Colors.white
                                        : mainColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    _controller.setSelectedNavigation(1);
                  },
                  child: Obx(
                    () => Container(
                      decoration: BoxDecoration(
                        color: _controller.selectedTab.value == 1
                            ? mainColor
                            : Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Center(
                        child: Text(
                          "Transaksi",
                          style:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
                                    color: _controller.selectedTab.value == 1
                                        ? Colors.white
                                        : mainColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Obx(
            () {
              if (_controller.selectedTab.value == 0) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: dummySchedule.length,
                  itemBuilder: (context, index) {
                    var schedule = dummySchedule[index];
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: index == dummySchedule.length - 1
                            ? const EdgeInsets.fromLTRB(24, 12, 24, 110)
                            : index != 0
                                ? const EdgeInsets.fromLTRB(24, 12, 24, 0)
                                : const EdgeInsets.fromLTRB(24, 0, 24, 0),
                        child: ItemSchedule(schedule: schedule),
                      ),
                    );
                  },
                );
              } else {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: dummyTransactionHistory.length,
                  itemBuilder: (context, index) {
                    var transaction = dummyTransactionHistory[index];
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: index == dummyTransactionHistory.length - 1
                            ? const EdgeInsets.fromLTRB(24, 0, 24, 110)
                            : const EdgeInsets.fromLTRB(24, 0, 24, 0),
                        decoration: BoxDecoration(
                            border: Border.all(color: greyColor),
                            borderRadius: index == 0
                                ? const BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  )
                                : index == dummyTransactionHistory.length - 1
                                    ? const BorderRadius.only(
                                        bottomLeft: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                      )
                                    : null),
                        child: ItemTransactionHistory(transaction: transaction),
                      ),
                    );
                  },
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
