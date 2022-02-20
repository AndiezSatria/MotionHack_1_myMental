part of 'widgets.dart';

class ItemChatHeader extends StatelessWidget {
  const ItemChatHeader({Key? key}) : super(key: key);

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
                SvgPicture.asset(
                  "assets/svg/logo_leaf.svg",
                  height: 24,
                  width: 24,
                ),
                const SizedBox(width: 8),
                Text(
                  "Selamat datang di my Mental",
                  style: Theme.of(context).textTheme.headline6?.copyWith(
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
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
            child: Text(
              "Hai Selena Gomez ! kamu bisa mengutarakan semua keluh kesahmu disini ke Sarah Anadia Chelsea. \n\nGunakan fitur yang kamu perlukan! \nYuk mulai !",
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(color: const Color(0xFF585858)),
            ),
          )
        ],
      ),
    );
  }
}
