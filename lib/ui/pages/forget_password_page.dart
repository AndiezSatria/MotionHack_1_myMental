part of 'pages.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);
  static const routeName = "/forget_password_page";

  @override
  _ForgetPasswordPageState createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  final TextEditingController _emailController =
      TextEditingController(text: Get.arguments['email'] ?? "Email");
  final _authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    final AppBar appbar = AppBar();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
                child: GestureDetector(
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Get.back();
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 42),
          Center(
            child: Text(
              "Atur ulang kata sandi",
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: mainColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          const SizedBox(height: 32),
          Center(
            child: SvgPicture.asset("assets/svg/il_forget_password.svg"),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(46.0, 82.0, 46.0, 0.0),
            child: Text(
              "Email",
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: const Color(0xFF6B6B6B),
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(46.0, 0.0, 46.0, 0.0),
            child: TextField(
              controller: _emailController,
              cursorColor: Colors.black,
              enabled: false,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontWeight: FontWeight.w600),
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF959595)),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: mainColor),
                ),
                prefixIcon: const Icon(Icons.email_outlined),
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(color: greyColor),
                hintText: "Email",
              ),
            ),
          ),
          SecondaryColorButton(
            onClick: () async {
              _authController.sendEmailResetPassword(_emailController.text);
            },
            text: "Ubah kata sandi",
            margin: const EdgeInsets.fromLTRB(24.0, 35.0, 24.0, 24.0),
          )
        ],
      ),
    );
  }
}
