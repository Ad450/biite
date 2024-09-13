import 'dart:io';

import 'package:flutter/cupertino.dart';

abstract class BiiteAdaptive extends StatelessWidget {
  const BiiteAdaptive({super.key});

  Widget buildAndroid();
  Widget buildIOS();

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid ? buildAndroid() : buildIOS();
  }
}
