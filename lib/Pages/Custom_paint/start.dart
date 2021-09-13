import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  final Color color;
  final double size;
  
  const Star({Key? key, required this.color, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: CustomPaint(
        painter:  _StarPainter(color),
      ),
    )
  }
}

class _StarPainter extends CustomPainter {
  final Color color;
  _StarPainter(this.color);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint() ..color = color;

    final path = new Path();
    path.moveTo(size.width * 0.5, 0);
    path.lineTo(size.width * 0.618, size.height* 0.382);
    path.lineTo(size.width, size.height * 0.382);
    path.lineTo(size.width * 0.691, size.height * 0.618);
    path.lineTo(size.width * 0.809, size.height);
    path.lineTo(size.width * 0.5, size.height * 0.7639);
    path.lineTo(size.width * 0.191, size.height);
    path.lineTo(size.width * 0.309, size.height * 0.618);
    path.lineTo(size.width * 0.309, size.height * 0.618);
    path.lineTo(0, size.height * 0.382);
    path.lineTo(size.width * 0.382, size.height * 0.382);

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
