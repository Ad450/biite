import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/widgets/biite.toast.dart';
import 'package:biite/features/search/state/fetch.projects.bloc.dart';
import 'package:biite/features/search/state/search.state.dart';
import 'package:biite/features/search/widget/search.project.dart';
import 'package:biite/features/search/widget/search.textfield.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.onboardingBackground,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 56.h),
                Text(
                  search,
                  style: context.appTheme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 24.h),
                const SearchTextfield(),
                SizedBox(height: 32.h),
              ],
            ),
            const Expanded(
              child: SingleChildScrollView(child: _SearchProject()),
            ),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }
}

class _SearchProject extends StatelessWidget {
  const _SearchProject();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FetchProjectsBloc, SearchState>(
      bloc: getIt.get<FetchProjectsBloc>()..fetch(),
      listener: (_, state) => state.maybeMap(
        orElse: () => null,
        errro: (state) => showToast(state.message),
      ),
      builder: (_, state) => state.maybeMap(
        orElse: () => const SizedBox(),
        loading: (_) => const Center(
            child: CupertinoActivityIndicator(
          color: ColorName.onBackground,
        )),
        fetch: (state) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: state.projects.map((e) => SearchProject(project: e)).toList(),
        ),
      ),
    );
  }
}
