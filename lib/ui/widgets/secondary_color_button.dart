part of 'widgets.dart';

class SecondaryColorButton extends StatelessWidget {
  final Function onClick;
  final String text;
  final EdgeInsetsGeometry? margin;

  const SecondaryColorButton({
    Key? key,
    required this.onClick,
    required this.text,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(100),
        ),
        border: Border.all(color: Colors.transparent),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4.0,
            offset: Offset(0, 4),
          )
        ],
        color: secondaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 12.0),
        child: Center(
          child: InkWell(
            onTap: () {
              onClick();
            },
            child: Text(
              text,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
