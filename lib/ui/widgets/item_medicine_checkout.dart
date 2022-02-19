part of 'widgets.dart';

class ItemMedicineCheckout extends StatelessWidget {
  const ItemMedicineCheckout({
    Key? key,
    required this.medicine,
  }) : super(key: key);
  final MedicineEntity medicine;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        border: Border.all(color: greyColor),
      ),
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              image: DecorationImage(
                image: AssetImage(medicine.imgAsset),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  medicine.name,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  "${medicine.amount} Tablet",
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        color: const Color(0xFF6B6B6B),
                      ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.error_outline,
                      color: redColor,
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        "Harus dengan resep ahli",
                        style: Theme.of(context).textTheme.caption?.copyWith(
                              color: redColor,
                            ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Rp ${medicine.price.toString().replaceAllMapped(regMoney, (Match match) => '${match[1]}.')}",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: greyColor,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: SvgPicture.asset("assets/svg/check_circle.svg"),
          ),
        ],
      ),
    );
  }
}
