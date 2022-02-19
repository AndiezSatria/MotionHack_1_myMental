part of 'widgets.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({Key? key}) : super(key: key);

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
                  Icons.settings_outlined,
                  color: secondaryColor,
                ),
                const SizedBox(width: 8),
                Text(
                  "Pengaturan Akun",
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
                    "Profilku",
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
                    "Ubah kata sandi",
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
                    "Pilihan bahasa",
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
                    "Bantuan dan laporan",
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
                    "Ajak teman pakai myMental",
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
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Metode pembayaran",
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
        ],
      ),
    );
  }
}
