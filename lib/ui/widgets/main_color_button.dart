part of 'widgets.dart';

class MainColorButton extends StatelessWidget {
  final double? width;
  final Function onClick;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  const MainColorButton({
    Key? key,
    this.width,
    this.padding,
    required this.onClick,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Container(
        width: width,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(100),
          ),
          border: Border.all(color: Colors.transparent),
          boxShadow: const [
            BoxShadow(
              color: Color(0x59ECECEC),
              blurRadius: 12.0,
              spreadRadius: 6.0,
            )
          ],
          color: mainColor,
        ),
        child: Padding(
          padding: padding ?? const EdgeInsets.all(16.0),
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
