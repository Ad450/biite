import 'package:biite/di/biite.di.dart';
import 'package:biite/search/state/fetch.projects.bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_validator/form_validator.dart';
import 'package:presentation/presentation.dart';

class SearchTextfield extends StatelessWidget {
  const SearchTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<NameFieldBloc>(instanceName: "search");
    final fetchProjectsBloc = getIt.get<FetchProjectsBloc>();

    return BlocConsumer<NameFieldBloc, FieldState>(
      bloc: bloc,
      listener: (_, state) => state.maybeMap(
        orElse: () => null,
        valid: (_) => fetchProjectsBloc.fetch(),
      ),
      builder: (_, state) => Material(
        elevation: 3,
        shadowColor: ColorName.onboardingBackground,
        borderRadius: BorderRadius.circular(8),
        child: SizedBox(
          height: 45.h,
          width: double.infinity,
          child: TextField(
            controller: bloc.nameController,
            onTapOutside: (PointerDownEvent event) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            style: const TextStyle(color: ColorName.background, fontSize: 16, fontFamily: FontFamily.publicSans),
            decoration: InputDecoration(
              fillColor: ColorName.white,
              filled: true,
              suffixIcon: const Icon(Icons.search_outlined),
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              errorText: state.maybeMap(orElse: () => null, invalid: (state) => state.message),
              errorStyle: context.appTheme.textTheme.bodySmall?.copyWith(
                color: Colors.red,
                fontSize: 12,
              ),
            ),
            onChanged: (text) => bloc.add(NameFieldEvent(text)),
          ),
        ),
      ),
    );
  }
}
