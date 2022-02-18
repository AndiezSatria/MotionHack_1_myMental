part of 'pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const routeName = "/login_page";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _passwordController = TextEditingController();
  bool _passwordVisibility = false;
  @override
  Widget build(BuildContext context) {
    final AppBar appbar = AppBar();
    return Scaffold(
      body: Column(
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
                    Get.arguments['email'],
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/svg/ic_lock.svg",
                  height: 24,
                  width: 24,
                ),
                SizedBox(width: 18),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        controller: _passwordController,
                        cursorColor: Colors.black,
                        obscureText: !_passwordVisibility,
                        style: Theme.of(context).textTheme.bodyText1,
                        decoration: InputDecoration(
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
                              setState(() {
                                _passwordVisibility = !_passwordVisibility;
                              });
                            },
                            icon: Icon(
                              _passwordVisibility
                                  ? Icons.visibility
                                  : Icons.visibility_off,
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
            onClick: () {},
            text: "Masuk",
            margin: const EdgeInsets.fromLTRB(24.0, 26.0, 24.0, 0.0),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: GestureDetector(
              onTap: () {},
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
    );
  }
}
