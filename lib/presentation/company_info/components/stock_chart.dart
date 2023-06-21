import 'dart:math';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:us_stock_app/domain/model/intra_day_info.dart';

class StockChart extends StatelessWidget {
  final List<IntraDayInfo> infos;
  final Color strokeColor;

  const StockChart({Key? key, required this.infos, required this.strokeColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: CustomPaint(
        painter: ChartPainter(
          infos: infos,
          strokeColor: strokeColor,
        ),
      ),
    );
  }
}

class ChartPainter extends CustomPainter {
  final List<IntraDayInfo> infos;
  final Color strokeColor;

  late final double _maxValue = infos.map<double>((e) => e.close).reduce(max);
  late final double _minValue = infos.map<double>((e) => e.close).reduce(min);

  ChartPainter({required this.infos, required this.strokeColor});

  final double _horizontalSpacing = 50.0;

  @override
  void paint(Canvas canvas, Size size) {
    final closeStep = (_maxValue - _minValue) / 5;
    for (var i = 0; i < 5; i++) {
      final tp = TextPainter(
        text: TextSpan(
          text: (_minValue + (closeStep * i)).toStringAsFixed(1),
          style: const TextStyle(fontSize: 12),
        ),
        textAlign: TextAlign.start,
        textDirection: TextDirection.ltr,
      );
      tp.layout();
      tp.paint(canvas, Offset(0, size.height * ((4 - i) / 5)));
    }

    final strokePath = Path();
    final horizonAreaWidth = size.width - _horizontalSpacing;
    final horizonStep = horizonAreaWidth / infos.length;
    strokePath.moveTo(
      _horizontalSpacing,
      _calVertical(close: infos[0].close, height: size.height),
    );
    for (var i = 1; i < infos.length; i++) {
      strokePath.quadraticBezierTo(
        _horizontalSpacing + horizonStep * (i - 1),
        _calVertical(close: infos[i - 1].close, height: size.height),
        _horizontalSpacing + horizonStep * i,
        _calVertical(close: infos[i].close, height: size.height),
      );
    }

    final strokePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round
      ..color = strokeColor;

    canvas.drawPath(strokePath, strokePaint);
    final fillPath = Path.from(strokePath)
      ..lineTo(
        size.width,
        _calVertical(close: infos.last.close, height: size.height))
      ..lineTo(size.width, size.height)
      ..lineTo(_horizontalSpacing, size.height)
      ..close();
    final fillPaint = Paint()
      ..style = PaintingStyle.fill
      ..shader = ui.Gradient.linear(Offset.zero, Offset(0, size.height),
          [strokeColor.withOpacity(0.2), Colors.transparent]);
    canvas.drawPath(fillPath, fillPaint);
  }

  double _calVertical({required double close, required double height}) {
    return ((_maxValue - close) / (_maxValue - _minValue)) * (height * 4 / 5);
  }

  @override
  bool shouldRepaint(ChartPainter oldDelegate) {
    return oldDelegate.infos != infos;
  }
}
