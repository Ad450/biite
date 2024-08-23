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

  Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const [FeedView(), SearchView(), MessageView(), ProfileView()][currentIndex],
      // body: Navigator(
      //   key: navigatorKeys[currentIndex],
      //   onGenerateRoute: (RouteSettings settings) {
      //     return MaterialPageRoute(
      //       builder: (_) => const [FeedView(), SearchView(), MessageView(), ProfileView()][currentIndex],
      //     );
      //   },
      // ),
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
                      Assets.images.homeIcon.path,
                    )
                  : Image.asset(Assets.images.homeIconInactive.path),
              label: ""),
          BottomNavigationBarItem(
            icon: currentIndex == 1
                ? Image.asset(
                    Assets.images.searchActive.path,
                  )
                : Image.asset(Assets.images.searchIcon.path),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: currentIndex == 2
                  ? Image.asset(Assets.images.messageActive.path)
                  : Image.asset(Assets.images.messageIcon.path),
              label: ""),
          BottomNavigationBarItem(
              icon: currentIndex == 3
                  ? Image.asset(Assets.images.profileActive.path)
                  : Image.asset(Assets.images.profileIcon.path),
              label: ""),
        ],
      ),
    );
  }
}
