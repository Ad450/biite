import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorName.background,
      body: Center(child: Text("search")),
    );
  }
}
