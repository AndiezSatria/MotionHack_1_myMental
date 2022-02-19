part of 'widgets.dart';

class OtherSettings extends StatelessWidget {
  OtherSettings({Key? key}) : super(key: key);
  final AuthController _authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(blurRadius: 3, color: Colors.black26),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                const Icon(
                  Icons.info_outlined,
                  color: secondaryColor,
                ),
                const SizedBox(width: 8),
                Text(
                  "Info Lainnya",
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
          Container(
            height: 1.5,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: greyColor,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Kebijakan Privasi",
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: const Color(0xFF6B6B6B),
                        ),
                  ),
                  const Icon(
                    Icons.chevron_right,
                    color: Color(0xFF6B6B6B),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Syarat & Ketentuan",
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: const Color(0xFF6B6B6B),
                        ),
                  ),
                  const Icon(
                    Icons.chevron_right,
                    color: Color(0xFF6B6B6B),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hubungi Kami",
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: const Color(0xFF6B6B6B),
                        ),
                  ),
                  const Icon(
                    Icons.chevron_right,
                    color: Color(0xFF6B6B6B),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tentang myMental",
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: const Color(0xFF6B6B6B),
                        ),
                  ),
                  const Icon(
                    Icons.chevron_right,
                    color: Color(0xFF6B6B6B),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Beri Rating",
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: const Color(0xFF6B6B6B),
                        ),
                  ),
                  const Icon(
                    Icons.chevron_right,
                    color: Color(0xFF6B6B6B),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return DialogLogout(
                    onCancelClick: () {
                      Navigator.pop(context);
                    },
                    onConfirmClick: () {
                      _authController.signOut();
                      Navigator.pop(context);
                    },
                  );
                },
              );
            },
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Keluar Akun",
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              color: redColor,
                            ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 24,
                        height: 24,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: secondaryColor,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.logout_outlined,
                            color: Color(0xFF6B6B6B),
                            size: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.chevron_right,
                    color: Color(0xFF6B6B6B),
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
