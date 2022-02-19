part of 'widgets.dart';

class OutlinedSecondaryButton extends StatelessWidget {
  const OutlinedSecondaryButton({
    Key? key,
    required this.onClick,
    required this.child,
    required this.margin,
  }) : super(key: key);
  final Function onClick;
  final Widget child;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
          border: Border.all(color: secondaryColor),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 12.0),
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
