import 'package:biite/core/presentation/byte.adaptive.dart';
import 'package:flutter/material.dart';

class ByteAdaptiveAppbar extends ByteAdaptive implements PreferredSizeWidget {
  const ByteAdaptiveAppbar({super.key});

  @override
  Widget buildAndroid() {
    throw UnimplementedError();
  }

  @override
  Widget buildIOS() {
    throw UnimplementedError();
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
