import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/state/form.field.events.dart';
import 'package:biite/core/presentation/state/form.field.state.dart';
import 'package:biite/core/presentation/widgets/biite.button.dart';
import 'package:biite/core/presentation/widgets/biite.toast.dart';
import 'package:biite/features/dashboard/bloc/create.project.form.bloc.dart';
import 'package:biite/features/dashboard/bloc/dasboard.bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateProjectFormButton extends StatelessWidget {
  const CreateProjectFormButton({super.key});

  @override
  Widget build(BuildContext context) {
    final projectBloc = getIt.get<CreateProjectFormBloc>();
    final dashboardBloc = getIt.get<DasboardBloc>();

    return BlocListener<CreateProjectFormBloc, CreateProjectFormFieldState>(
      bloc: projectBloc,
      listener: (_, state) => state.maybeMap(
        orElse: () => null,
        valid: (state) => dashboardBloc.createProject(),
        invalid: (state) => showToast(state.message!),
      ),
      child: BiiteTextButton(
        onPressed: () => projectBloc.add(CreateProjectFormFieldEvent()),
        text: "Create project",
      ),
    );
  }
}
