import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:biite/features/dashboard/dashboard.view.dart';
import 'package:biite/features/feed/feed.view.dart';
import 'package:biite/features/message/message.view.dart';
import 'package:biite/features/profile/profile.view.dart';
import 'package:biite/features/search/search.view.dart';
import 'package:biite/gen/assets.gen.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    BackButtonInterceptor.add(_interceptLeavingNonFeedScreen);
  }

  bool _interceptLeavingNonFeedScreen(bool stopDefaultButtonEvent, RouteInfo info) {
    if (stopDefaultButtonEvent) return true;
    if (currentIndex != 0) {
      setState(() {
        currentIndex = 0;
      });
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const [
        SearchView(),
        MessageView(),
        FeedView(),
        DashboardView(),
        ProfileView(),
      ][currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorName.onboardingBackground,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: currentIndex == 0
                ? Image.asset(
                    Assets.images.searchActive.path,
                  )
                : Image.asset(Assets.images.searchIcon.path),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: currentIndex == 1
                  ? Image.asset(Assets.images.messageActive.path)
                  : Image.asset(Assets.images.messageIcon.path),
              label: ""),
          BottomNavigationBarItem(
              icon: currentIndex == 2
                  ? Image.asset(
                      Assets.images.homeIcon.path,
                    )
                  : Image.asset(Assets.images.homeIconInactive.path),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.post_add_rounded,
                color: currentIndex == 3 ? ColorName.primary : ColorName.primary.withOpacity(0.4),
                size: 30,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: currentIndex == 4
                  ? Image.asset(Assets.images.profileActive.path)
                  : Image.asset(Assets.images.profileIcon.path),
              label: ""),
        ],
      ),
    );
  }
}
