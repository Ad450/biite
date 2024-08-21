import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BarWidget extends StatelessWidget {
  const BarWidget({required this.gain, required this.color, super.key});
  final double gain;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32.w,
      height: (gain / 100) * 215,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: color,
      ),
    );
  }
}
