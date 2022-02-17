part of 'pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const routeName = "/login_page";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg_second.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                            )
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(100),
                            ),
                            border: Border.all(color: Colors.transparent),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x59ECECEC),
                                blurRadius: 12.0,
                                spreadRadius: 6.0,
                              )
                            ],
                            color: mainColor,
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                            child: Center(
                              child: InkWell(
                                onTap: () {},
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      MdiIcons.web,
                                      color: Colors.white,
                                      size: 24,
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      "IND",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          ?.copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    const SizedBox(width: 4),
                                    Flag.fromCode(
                                      FlagsCode.ID,
                                      height: 16,
                                      width: 16,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 36),
                  Center(
                    child: SvgPicture.asset(
                      "assets/svg/il_login.svg",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24.0, 50.0, 24.0, 0.0),
                    child: Text(
                      "Masuk / Daftar Akun",
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24.0, 4.0, 24.0, 0.0),
                    child: Text(
                      "Yuk, eksplor yang kamu butuhkan di myMental!",
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0.0),
                    child: Text(
                      "Email / Nomor HP",
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 0.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFF2C80AA),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
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
                        controller: _editingController,
                        cursorColor: greyColor,
                        decoration: InputDecoration(
                          hintStyle: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(color: greyColor),
                          hintText: "Ketik disini ya",
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white10,
                                width: 1.0,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white10,
                                width: 1.0,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 0.0),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(100),
                      ),
                      border: Border.all(color: Colors.transparent),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4.0,
                          offset: Offset(0, 4),
                        )
                      ],
                      color: secondaryColor,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 12.0),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Get.toNamed(LoginPage.routeName);
                          },
                          child: Text(
                            "Masuk / Daftar",
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "----------",
                          style:
                              Theme.of(context).textTheme.bodyText2?.copyWith(
                                    color: greyColor,
                                  ),
                        ),
                        Text(
                          "Masuk dengan media sosial",
                          style:
                              Theme.of(context).textTheme.bodyText2?.copyWith(
                                    color: greyColor,
                                  ),
                        ),
                        Text(
                          "----------",
                          style:
                              Theme.of(context).textTheme.bodyText2?.copyWith(
                                    color: greyColor,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 0.0),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(100),
                      ),
                      border: Border.all(color: secondaryColor),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 12.0),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Get.toNamed(LoginPage.routeName);
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/ic_google.png",
                                height: 25.0,
                              ),
                              const SizedBox(width: 21),
                              Text(
                                "Google",
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
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
