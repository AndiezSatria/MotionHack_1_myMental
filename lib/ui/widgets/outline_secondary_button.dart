part of 'widgets.dart';

class OutlineSecondaryButton extends StatelessWidget {
  const OutlineSecondaryButton({
    Key? key,
    this.margin,
    required this.child,
    required this.onClick,
  }) : super(key: key);
  final EdgeInsetsGeometry? margin;
  final Widget child;
  final Function onClick;

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
            Radius.circular(100),
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
