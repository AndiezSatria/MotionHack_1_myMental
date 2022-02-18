part of 'pages.dart';

class RegisterPage extends GetView<RegisterController> {
  RegisterPage({Key? key}) : super(key: key);
  static const routeName = "/register_page";
  final AuthController _authController = Get.find();

  @override
  Widget build(BuildContext context) {
    final AppBar appbar = AppBar();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                        "Buat Akun myMental, Yuk!",
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
              padding: const EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 0.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/svg/ic_identity.svg",
                    height: 24,
                    width: 24,
                  ),
                  const SizedBox(width: 18),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Obx(
                          () => TextField(
                            controller: controller.nameController.value,
                            cursorColor: Colors.black,
                            onChanged: (text) {
                              controller.setIsNameValid(text);
                            },
                            style: Theme.of(context).textTheme.bodyText1,
                            decoration: InputDecoration(
                              errorText: !controller.isNameValid.value
                                  ? controller.nameMessage.value
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
                              hintText: "Ketik nama kamu",
                              labelText: "Ketik nama kamu",
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
              padding: const EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 0.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/svg/ic_lock.svg",
                    height: 24,
                    width: 24,
                  ),
                  const SizedBox(width: 18),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Obx(
                          () => TextField(
                            controller: controller.passwordController.value,
                            cursorColor: Colors.black,
                            obscureText: !controller.isPasswordVisible.value,
                            onChanged: (text) {
                              controller.setIsPasswordValid(text);
                            },
                            style: Theme.of(context).textTheme.bodyText1,
                            decoration: InputDecoration(
                              errorText: !controller.isPasswordValid.value
                                  ? controller.passwordMessage.value
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
                controller.setIsNameValid(
                    controller.nameController.value.text.trim());
                if (controller.isPasswordValid.value &&
                    controller.isNameValid.value) {
                  _authController.register(Get.arguments['email'] ?? "email",
                      controller.passwordController.value.text.trim());
                }
              },
              text: "Daftar",
              margin: const EdgeInsets.fromLTRB(24.0, 26.0, 24.0, 0.0),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "Dengan membuat akun myMental, saya menyetujui ",
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        color: const Color(0xFF959595),
                      ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Syarat & Ketentuan",
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            color: const Color(0xFF959595),
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                    const TextSpan(text: " serta "),
                    TextSpan(
                      text: "Kebijakan Privasi",
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            color: const Color(0xFF959595),
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                    const TextSpan(text: " yang berlaku."),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
