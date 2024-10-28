import 'package:biite/dashboard/bloc/create.project.form.bloc.dart';
import 'package:biite/di/biite.di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:presentation/widgets/button.dart';
import 'package:presentation/widgets/toast.dart';

class CreateProjectFormButton extends StatelessWidget {
  const CreateProjectFormButton({required this.isLoading, super.key});

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final projectBloc = getIt.get<CreateProjectFormBloc>();

    return BlocListener<CreateProjectFormBloc, FormFieldBaseState>(
      bloc: projectBloc,
      listener: (_, state) => state.maybeMap(
        orElse: () => null,
        // valid: (state) => dashboardBloc.createProject(),
        invalid: (state) => showToast(state.message!),
      ),
      child: LoadingButton(
        isLoading: isLoading,
        buttonText: "Create project",
        onTap: () => projectBloc.add(CreateProjectFormFieldEvent()),
      ),
    );
  }
}
