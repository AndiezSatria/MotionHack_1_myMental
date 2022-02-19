part of 'widgets.dart';

class ItemServices extends StatelessWidget {
  const ItemServices(
      {Key? key,
      required this.startColor,
      required this.endColor,
      required this.illustrationPath,
      required this.text,
      required this.onClick})
      : super(key: key);
  final Color startColor;
  final Color endColor;
  final String illustrationPath;
  final String text;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                )
              ],
              color: Colors.white,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  startColor,
                  endColor,
                ],
              ),
            ),
            child: SvgPicture.asset(
              illustrationPath,
              width: 70,
              height: 70,
              fit: BoxFit.scaleDown,
            ),
          ),
          const SizedBox(height: 6),
          SizedBox(
            width: 100,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.caption?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF6B6B6B),
                  ),
            ),
          )
        ],
      ),
    );
  }
}
