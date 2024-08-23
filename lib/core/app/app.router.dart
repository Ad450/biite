import 'package:biite/features/feed/widgets/feed.details.dart';
import 'package:biite/features/home/home.view.dart';
import 'package:biite/features/onboarding/onboarding.view.dart';
import 'package:biite/features/startup/startup.view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: "/", builder: (context, state) => const Scaffold(body: StartupView())),
    GoRoute(path: "/onboarding", builder: (context, state) => const Scaffold(body: OnboardingView())),
    GoRoute(path: "/home", builder: (context, state) => const HomeView()),
    GoRoute(path: "/feed-details", builder: (context, state) => const FeedDetailsView())
  ],
);
