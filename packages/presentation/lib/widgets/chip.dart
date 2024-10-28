import 'package:flutter/material.dart';
import 'package:presentation/gen/colors.gen.dart';

class BiiteChip extends StatelessWidget {
  const BiiteChip({required this.text, required this.onSelected, required this.selected, super.key});

  final Function(bool) onSelected;
  final String text;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    // return IntrinsicWidth(
    //   child: Container(
    //     padding: const EdgeInsets.symmetric(horizontal: 6.0),
    //     // margin: const EdgeInsets.only(left: 8.0),
    //     height: 24.h,
    //     decoration: BoxDecoration(
    //       border: Border.all(color: ColorName.fillColor),
    //       borderRadius: BorderRadius.circular(4),
    //     ),
    //     child: Center(
    //       child: Text(
    //         text.toUpperCase(),
    //         style: context.appTheme.textTheme.bodySmall?.copyWith(
    //           fontSize: 12.8,
    //           color: ColorName.fillColor,
    //         ),
    //       ),
    //     ),
    //   ),
    // );
    return ChoiceChip(
      label: Text(text.toUpperCase()),
      onSelected: onSelected,
      selected: selected,
      selectedColor: ColorName.primary,
      // disabledColor: Colors.red,
      backgroundColor: ColorName.onboardingBackground,
    );
  }
}
