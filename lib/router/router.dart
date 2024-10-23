import 'package:bid_repository/bid_repository.dart';
import 'package:biite/feed/widgets/all.active.projects.dart';
import 'package:biite/feed/widgets/all.created.projects.dart';
import 'package:biite/feed/widgets/all.propositions.dart';
import 'package:biite/feed/widgets/bid.related.project.detial.dart';
import 'package:biite/feed/widgets/created.project.detail.dart';
import 'package:biite/feed/widgets/feed.proposition.related.project.dart';
import 'package:biite/feed/widgets/metric.details.dart';
import 'package:biite/feed/widgets/active.project.detail.dart';
import 'package:biite/feed/widgets/proposition.details.dart';
import 'package:biite/feed/widgets/send.your.work.dart';
import 'package:biite/feed/widgets/sent.bids.details.dart';
import 'package:biite/home/home.view.dart';
import 'package:biite/message/message.view.dart';
import 'package:biite/message/widget/message.detail.dart';
import 'package:biite/onboarding/onboarding.view.dart';
import 'package:biite/profile/widget/all.reviews.dart';
import 'package:biite/profile/widget/edit.profile.dart';
import 'package:biite/search/widget/make.proposition.dart';
import 'package:biite/search/widget/search.project.detail.dart';
import 'package:biite/auth/login.view.dart';
import 'package:biite/startup/startup.view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_repository/project_repository.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: "/", builder: (context, state) => const Scaffold(body: StartupView())),
    GoRoute(path: "/login", builder: (context, state) => const Scaffold(body: Login())),
    GoRoute(path: "/onboarding", builder: (context, state) => const Scaffold(body: OnboardingView())),
    GoRoute(path: "/home", builder: (context, state) => const HomeView()),
    GoRoute(path: "/chats", builder: (context, state) => const MessageView()),
    GoRoute(path: "/feed-details", builder: (context, state) => const MetricDetail()),
    GoRoute(
      path: "/activeProjectDetail",
      builder: (context, state) => ActiveProjectDetail(project: state.extra as ProjectModel),
    ),
    GoRoute(
      path: "/sendYourWork",
      builder: (context, state) => SendYourWork(
        project: state.extra as ProjectModel,
      ),
    ),
    GoRoute(
      path: "/searchProjectDetail",
      builder: (context, state) => SearchProjectDetail(
        project: state.extra as ProjectModel,
      ),
    ),
    GoRoute(
      path: "/makeProposition",
      builder: (context, state) => MakeProposition(project: state.extra as ProjectModel),
    ),
    GoRoute(
      path: "/messageDetail",
      builder: (context, state) => MessageDetail(
        extra: state.extra as Map<String, dynamic>,
      ),
    ),
    GoRoute(path: "/reviewDetail", builder: (context, state) => const AllReviews()),
    GoRoute(path: "/login", builder: (context, state) => const Login()),
    GoRoute(
      path: "/createdProjectDetail",
      builder: (context, state) => CreatedProjectDetail(
        projectModel: state.extra as ProjectModel,
      ),
    ),
    GoRoute(
      path: "/allPropositions",
      builder: (context, state) => AllPropositions(
        params: state.extra as Map<String, dynamic>,
      ),
    ),
    GoRoute(
      path: "/allCreatedProjects",
      builder: (context, state) => AllCreatedProjects(projects: state.extra as List<ProjectModel>),
    ),
    GoRoute(
      path: "/allActiveProjects",
      builder: (context, state) => AllActiveProjects(
        projects: state.extra as List<ProjectModel>,
      ),
    ),
    GoRoute(
      path: "/propositionDetail",
      builder: (context, state) => PropositionDetails(
        bid: state.extra as BidModel,
      ),
    ),
    GoRoute(
      path: "/propositionRelatedProject",
      builder: (context, state) => RelatedProject(
        bid: state.extra as BidModel,
      ),
    ),
    GoRoute(path: "/editProfile", builder: (context, state) => const EditProfile()),
    GoRoute(
      path: "/sendBidsDetails",
      builder: (context, state) => SentBidDetails(bid: state.extra as BidModel),
    ),
    // sendBidsDetails
    GoRoute(
      path: "/bidRelatedProjectDetail",
      builder: (context, state) => BidRelatedProjectDetail(projectModel: state.extra as ProjectModel),
    ),
    //
  ],
);
