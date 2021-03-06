part of 'pages.dart';

class LoginPage extends GetView<LoginController> {
  LoginPage({Key? key}) : super(key: key);
  static const routeName = "/login_page";
  final AuthController _authController = Get.find();

  @override
  Widget build(BuildContext context) {
    final AppBar appbar = AppBar();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                        "Masuk ke Akunmu",
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
              padding: const EdgeInsets.fromLTRB(24.0, 54.0, 24.0, 0.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/svg/ic_mail.svg",
                    height: 24,
                    width: 24,
                  ),
                  const SizedBox(width: 18),
                  Expanded(
                    child: Text(
                      Get.arguments['email'] ?? "Email mu",
                      // "email",
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 36.0, 24.0, 0.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: SvgPicture.asset(
                      "assets/svg/ic_lock.svg",
                      height: 24,
                      width: 24,
                    ),
                  ),
                  const SizedBox(width: 18),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Obx(
                          () => TextField(
                            onChanged: (text) {
                              controller.setIsPasswordValid(text);
                            },
                            controller: controller.passwordController.value,
                            cursorColor: Colors.black,
                            obscureText: !controller.isPasswordVisible.value,
                            style: Theme.of(context).textTheme.bodyText1,
                            decoration: InputDecoration(
                              errorText: !controller.isPasswordValid.value
                                  ? controller.message.value
                                  : null,
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: greyColor),
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: mainColor),
                              ),
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(color: greyColor),
                              hintText: "Ketik kata sandi kamu",
                              suffixIcon: IconButton(
                                onPressed: () {
                                  controller.setPasswordVisibility();
                                },
                                icon: Icon(
                                  controller.isPasswordVisible.value
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          "8 karakter atau lebih & tanpa spasi",
                          style: Theme.of(context).textTheme.caption?.copyWith(
                                color: const Color(0xFF959595),
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SecondaryColorButton(
              onClick: () {
                controller.setIsPasswordValid(
                    controller.passwordController.value.text.trim());
                if (controller.isPasswordValid.value) {
                  _authController.login(Get.arguments['email'] ?? "email",
                      controller.passwordController.value.text.trim());
                }
              },
              text: "Masuk",
              margin: const EdgeInsets.fromLTRB(24.0, 26.0, 24.0, 0.0),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(
                    ForgetPasswordPage.routeName,
                    arguments: {'email': Get.arguments['email'] ?? "Email mu"},
                  );
                },
                child: Text(
                  "Lupa kata sandi",
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: secondaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
