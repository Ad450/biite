import 'package:biite/core/presentation/biite.adaptive.dart';
import 'package:flutter/material.dart';

class BiiteAdaptiveAppbar extends BiiteAdaptive implements PreferredSizeWidget {
  const BiiteAdaptiveAppbar({super.key});

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
