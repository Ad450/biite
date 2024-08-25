import 'package:biite/core/app/app.theme.dart';
import 'package:biite/gen/assets.gen.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchFilters extends StatefulWidget {
  const SearchFilters({super.key});

  @override
  State<SearchFilters> createState() => _SearchFiltersState();
}

class _SearchFiltersState extends State<SearchFilters> with SingleTickerProviderStateMixin {
  bool shouldExpand = false;
  late AnimationController _animationController;
  late Animation<double> _heightAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _heightAnimation = Tween<double>(begin: 0, end: 215).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.linear,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {
                shouldExpand = !shouldExpand;
              });
              if (shouldExpand) {
                _animationController.forward();
              } else {
                _animationController.reverse();
              }
            },
            child: Row(
              children: <Widget>[
                Image.asset(Assets.images.filterIcon.path),
                const SizedBox(width: 8),
                Text(
                  "Filters",
                  style: context.appTheme.textTheme.bodySmall?.copyWith(
                    fontSize: 16,
                    color: ColorName.fillColor,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 4),
          shouldExpand
              ? AnimatedBuilder(
                  animation: _animationController,
                  builder: (_, __) => ClipRect(
                    child: Align(
                      alignment: Alignment.topCenter,
                      heightFactor: _heightAnimation.value / 215,
                      child: Column(
                        children: <Widget>[
                          _FilterWidget(filterText: "Project name", onTap: () {}),
                          const SizedBox(height: 8),
                          _FilterWidget(filterText: "Price", onTap: () {}),
                        ],
                      ),
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}

class _FilterWidget extends StatelessWidget {
  const _FilterWidget({required this.filterText, required this.onTap, super.key});

  final String filterText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorName.onboardingBackground,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            filterText,
            style: context.appTheme.textTheme.bodySmall?.copyWith(
              color: ColorName.onBackground,
            ),
          ),
        ),
      ),
    );
  }
}
