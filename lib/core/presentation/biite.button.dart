import 'package:biite/core/presentation/biite.adaptive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BiiteTextButton extends BiiteAdaptive {
  const BiiteTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.isBusy = false,
    this.style,
    this.buttonStyle,
  });

  final VoidCallback onPressed;
  final String text;
  final bool isBusy;
  final TextStyle? style;
  final ButtonStyle? buttonStyle;

  @override
  Widget buildAndroid() {
    return ElevatedButton(
      onPressed: onPressed,
      style: buttonStyle,
      child: Text(
        text,
        style: style,
      ),
    );
  }

  @override
  Widget buildIOS() {
    return CupertinoButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
