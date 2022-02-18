part of 'widgets.dart';

class CustomBGPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    final width = size.width;
    final height = size.height;

    Path circlePath = Path();
    circlePath.moveTo(width + 50, height * 0.32);
    circlePath.quadraticBezierTo(
        width, height * 0.515, width * 0.56, height * 0.515);
    circlePath.quadraticBezierTo(-40.0, height * 0.49, 0.0, height * 0.15);
    circlePath.lineTo(0, 0);
    circlePath.lineTo(width, 0);
    paint.color = mainColor;
    canvas.drawPath(circlePath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
