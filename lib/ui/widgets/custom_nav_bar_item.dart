part of 'widgets.dart';

class CustomNavBarItem extends StatelessWidget {
  const CustomNavBarItem({
    Key? key,
    required this.onClick,
    required this.icon,
    required this.title,
    required this.isSelected,
  }) : super(key: key);
  final Function onClick;
  final bool isSelected;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isSelected ? secondaryColor : Colors.white,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  color: isSelected ? secondaryColor : Colors.white,
                ),
          )
        ],
      ),
    );
  }
}
