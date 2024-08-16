import 'dart:io';

import 'package:flutter/cupertino.dart';

abstract class ByteAdaptive extends StatelessWidget {
  const ByteAdaptive({super.key});

  Widget buildAndroid();
  Widget buildIOS();

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid ? buildAndroid() : buildIOS();
  }
}
