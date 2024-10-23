import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:biite/dashboard/dashboard.view.dart';
import 'package:biite/feed/feed.view.dart';
import 'package:biite/message/message.view.dart';
import 'package:biite/profile/profile.view.dart';
import 'package:biite/search/search.view.dart';
import 'package:flutter/material.dart';
import 'package:presentation/gen/colors.gen.dart';

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
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
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
              icon: Icon(
                Icons.search_outlined,
                color: currentIndex == 0 ? ColorName.primary : ColorName.primary.withOpacity(0.4),
                size: 30,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.message_outlined,
                  color: currentIndex == 1 ? ColorName.primary : ColorName.primary.withOpacity(0.4),
                  size: 30,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.dashboard_outlined,
                  color: currentIndex == 2 ? ColorName.primary : ColorName.primary.withOpacity(0.4),
                  size: 30,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.post_add_rounded,
                  color: currentIndex == 3 ? ColorName.primary : ColorName.primary.withOpacity(0.4),
                  size: 30,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_pin_circle_outlined,
                  color: currentIndex == 4 ? ColorName.primary : ColorName.primary.withOpacity(0.4),
                  size: 30,
                ),
                label: ""),
          ],
        ),
      ),
    );
  }
}
