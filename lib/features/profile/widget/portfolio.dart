import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({required this.image, super.key});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      height: 101.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
