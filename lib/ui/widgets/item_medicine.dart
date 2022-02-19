part of 'widgets.dart';

class ItemMedicine extends StatelessWidget {
  const ItemMedicine({
    Key? key,
    required this.medicine,
    required this.onButtonClick,
  }) : super(key: key);
  final MedicineEntity medicine;
  final Function onButtonClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(6.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0.3,
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(6.0)),
                child: Image.asset(
                  medicine.imgAsset,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              medicine.name,
              style: Theme.of(context).textTheme.bodyText2,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
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
          ),
          const SizedBox(height: 8),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Rp ${medicine.price.toString().replaceAllMapped(regMoney, (Match match) => '${match[1]}.')}",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: greyColor,
                  ),
            ),
          ),
          const SizedBox(height: 8),
          OutlinedSecondaryButton(
            onClick: () {
              onButtonClick();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.add,
                  color: secondaryColor,
                ),
                const SizedBox(width: 4),
                Text(
                  "Tambah",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        color: secondaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            margin: const EdgeInsets.symmetric(horizontal: 20),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
