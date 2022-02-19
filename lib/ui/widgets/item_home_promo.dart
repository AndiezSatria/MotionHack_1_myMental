part of 'widgets.dart';

// Type for items to ensure the items height
class ItemHomePromo extends StatelessWidget {
  const ItemHomePromo({
    Key? key,
    required this.items,
    required this.onMoreClick,
    this.type = 1,
    required this.title,
  }) : super(key: key);
  final List<Widget> items;
  final Function onMoreClick;
  final int type;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              SecondaryColorSmallButton(
                onClick: () {
                  onMoreClick();
                },
                text: "Lihat Semua",
              )
            ],
          ),
        ),
        SizedBox(
          height: type == 1 ? 125 : 160,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ...(items.map(
                (element) => Container(
                  margin: items.indexOf(element) != items.length - 1
                      ? const EdgeInsets.only(left: 24)
                      : const EdgeInsets.symmetric(horizontal: 24),
                  child: element,
                ),
              )).toList(),
            ],
          ),
        )
      ],
    );
  }
}
