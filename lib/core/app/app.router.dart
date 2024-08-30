import 'package:biite/features/feed/widgets/all.active.projects.dart';
import 'package:biite/features/feed/widgets/all.created.projects.dart';
import 'package:biite/features/feed/widgets/all.propositions.dart';
import 'package:biite/features/feed/widgets/created.project.detail.dart';
import 'package:biite/features/feed/widgets/metric.details.dart';
import 'package:biite/features/feed/widgets/active.project.detail.dart';
import 'package:biite/features/feed/widgets/proposition.details.dart';
import 'package:biite/features/feed/widgets/send.your.work.dart';
import 'package:biite/features/home/home.view.dart';
import 'package:biite/features/message/widget/message.detail.dart';
import 'package:biite/features/onboarding/onboarding.view.dart';
import 'package:biite/features/profile/widget/all.reviews.dart';
import 'package:biite/features/profile/widget/edit.profile.dart';
import 'package:biite/features/search/widget/make.proposition.dart';
import 'package:biite/features/search/widget/search.project.detail.dart';
import 'package:biite/features/signup/login.view.dart';
import 'package:biite/features/startup/startup.view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: "/", builder: (context, state) => const Scaffold(body: StartupView())),
    GoRoute(path: "/login", builder: (context, state) => const Scaffold(body: Login())),
    GoRoute(path: "/onboarding", builder: (context, state) => const Scaffold(body: OnboardingView())),
    GoRoute(path: "/home", builder: (context, state) => const HomeView()),
    GoRoute(path: "/feed-details", builder: (context, state) => const MetricDetail()),
    GoRoute(path: "/activeProjectDetail", builder: (context, state) => const ActiveProjectDetail()),
    GoRoute(path: "/sendYourWork", builder: (context, state) => const SendYourWork()),
    GoRoute(path: "/searchProjectDetail", builder: (context, state) => const SearchProjectDetail()),
    GoRoute(path: "/makeProposition", builder: (context, state) => const MakeProposition()),
    GoRoute(path: "/messageDetail", builder: (context, state) => const MessageDetail()),
    GoRoute(path: "/reviewDetail", builder: (context, state) => const AllReviews()),
    GoRoute(path: "/login", builder: (context, state) => const Login()),
    GoRoute(path: "/createdProjectDetail", builder: (context, state) => const CreatedProjectDetail()),
    GoRoute(path: "/allPropositions", builder: (context, state) => const AllPropositions()),
    GoRoute(path: "/allCreatedProjects", builder: (context, state) => const AllCreatedProjects()),
    GoRoute(path: "/allActiveProjects", builder: (context, state) => const AllActiveProjects()),
    GoRoute(path: "/propositionDetail", builder: (context, state) => const PropositionDetails()),
    GoRoute(path: "/editProfile", builder: (context, state) => const EditProfile()),
  ],
);
