part of 'pages.dart';

class ForgetPassConfirmationPage extends StatelessWidget {
  const ForgetPassConfirmationPage({Key? key}) : super(key: key);
  static const String routeName = "/forget_pass_confirm";

  @override
  Widget build(BuildContext context) {
    final AppBar appbar = AppBar();
    return Scaffold(
      body: CustomPaint(
        painter: CustomBGPainter(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: appbar.preferredSize.height + 16,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                  child: GestureDetector(
                    onTap: () {
                      Get.offNamedUntil(
                          ChooseLoginPage.routeName, (route) => route.isFirst);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                SvgPicture.asset("assets/svg/il_check_email.svg"),
                const SizedBox(height: 90),
                Text(
                  "Buka Emailmu",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 16),
                Text(
                  "Kami telah mengirimkan akses \nuntuk mengubah kata sandi ke emailmu",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
                const SizedBox(height: 36),
                SecondaryColorButton(
                  onClick: () {
                    Get.offNamedUntil(
                        ChooseLoginPage.routeName, (route) => route.isFirst);
                  },
                  text: "Ok",
                  margin: const EdgeInsets.fromLTRB(24, 0, 24, 32),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
