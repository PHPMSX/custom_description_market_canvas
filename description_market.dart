import 'package:flutter/material.dart';

class DescriptionMarket extends StatelessWidget {
  final String text;
  final double height;
  final Color backgroundColor;
  final Color colorText;

  const DescriptionMarket(
      {Key? key,
      required this.height,
      required this.text,
      required this.backgroundColor,
      required this.colorText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // set with by length text
    final double width = text.length * 12 + 15;

    return CustomPaint(
      painter: CustomPaintDescription(width, height, backgroundColor),
      child: SizedBox(
        width: width,
        height: height,
        child: Align(
          alignment: const Alignment(0, -0.2),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: colorText, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomPaintDescription extends CustomPainter {
  final double width;
  final double height;
  final Color color;
  CustomPaintDescription(this.width, this.height, this.color);

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(0, 10);
    path.lineTo(0, height - 20);
    path.quadraticBezierTo(0, height - 10, 10, height - 10);
    path.lineTo(width / 2 - 5, height - 10);
    path.lineTo(width / 2, height);
    path.lineTo(width / 2 + 5, height - 10);
    path.lineTo(width - 10, height - 10);
    path.quadraticBezierTo(width, height - 10, width, height - 20);
    path.lineTo(width, 10);
    path.quadraticBezierTo(width, 0, width - 10, 0);
    path.lineTo(10, 0);
    path.quadraticBezierTo(0, 0, 0, 10);
    path.close();
    canvas.drawPath(
      path,
      Paint()..color = color,
    );
  }

  @override
  bool shouldRepaint(CustomPaintDescription oldDelegate) {
    return false;
  }
}
