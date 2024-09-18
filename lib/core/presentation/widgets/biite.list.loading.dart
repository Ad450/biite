import 'package:card_loading/card_loading.dart';
import 'package:flutter/material.dart';

class BiiteListLoading extends StatelessWidget {
  const BiiteListLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        3,
        (index) => const CardLoading(
          height: 100,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          margin: EdgeInsets.only(bottom: 10),
        ),
      ),
    );
  }
}
