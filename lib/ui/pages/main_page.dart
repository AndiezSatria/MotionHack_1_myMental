part of 'pages.dart';

class MainPage extends GetView<MainController> {
  const MainPage({Key? key}) : super(key: key);
  static const String routeName = "/main_page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => listMainPages[controller.selectedNavigation.value],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 82,
              padding: const EdgeInsets.only(top: 18, bottom: 18),
              margin: const EdgeInsets.fromLTRB(12, 0, 12, 15),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: mainColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Obx(
                    () => CustomNavBarItem(
                      icon: MdiIcons.home,
                      title: "Beranda",
                      onClick: () {
                        controller.setSelectedNavigation(0);
                      },
                      isSelected: controller.selectedNavigation.value == 0,
                    ),
                  ),
                  Obx(
                    () => CustomNavBarItem(
                      icon: MdiIcons.history,
                      title: "Aktivitas",
                      onClick: () {
                        controller.setSelectedNavigation(1);
                      },
                      isSelected: controller.selectedNavigation.value == 1,
                    ),
                  ),
                  Obx(
                    () => CustomNavBarItem(
                      icon: Icons.notifications,
                      title: "Notifikasi",
                      onClick: () {
                        controller.setSelectedNavigation(2);
                      },
                      isSelected: controller.selectedNavigation.value == 2,
                    ),
                  ),
                  Obx(
                    () => CustomNavBarItem(
                      icon: Icons.person,
                      title: "Profil",
                      onClick: () {
                        controller.setSelectedNavigation(3);
                      },
                      isSelected: controller.selectedNavigation.value == 3,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
