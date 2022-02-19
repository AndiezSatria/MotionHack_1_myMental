part of 'widgets.dart';

class ItemSelectableTime extends StatelessWidget {
  const ItemSelectableTime({
    Key? key,
    required this.time,
    required this.onClick,
    required this.isSelected,
  }) : super(key: key);
  final String time;
  final bool isSelected;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Container(
        height: 35,
        padding: const EdgeInsets.fromLTRB(10, 6, 10, 6),
        decoration: BoxDecoration(
          border: Border.all(color: greyColor),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          color: isSelected ? secondaryColor : const Color(0x4DCECECE),
        ),
        child: Center(
          child: Text(
            time,
            style: Theme.of(context).textTheme.caption?.copyWith(
                  color: isSelected ? Colors.white : const Color(0xFF6B6B6B),
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ),
    );
  }
}
