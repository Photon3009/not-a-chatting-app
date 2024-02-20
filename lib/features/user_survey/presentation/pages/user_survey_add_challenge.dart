import 'dart:convert';
import 'package:auto_route/auto_route.dart';
import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:its_urgent/configurations/configurations.dart';
import 'package:its_urgent/configurations/router/router.gr.dart';
import 'package:its_urgent/features/authentication/data/blocs/auth_cubit.dart';
import 'package:its_urgent/features/user_survey/data/challenge_model.dart';
import 'package:its_urgent/features/user_survey/presentation/pages/user_survey_base_wrapper.dart';
import 'package:reactive_forms/reactive_forms.dart';

@RoutePage()
class UserSurveyAddChallengePage extends StatelessWidget {
  const UserSurveyAddChallengePage({super.key});

  FormGroup _formBuilder() => fb.group({
        kQuestionField: FormControl<String>(validators: [
          Validators.required,
        ], value: ''),
        kAnswerField: FormControl<String>(validators: [
          Validators.required,
        ], value: ''),
      });

  final textBoxSpacing = const SizedBox(
    height: kPadding * 1.5,
  );

  @override
  Widget build(BuildContext context) => ReactiveFormBuilder(
        form: _formBuilder,
        builder: (context, form, child) => UserSurveyBaseWrapper(
          confirmButtonText: 'Confirm',
          hasReactiveForm: true,
          onConfirm: () async {
            print("onconfirm1");
            await submitForm(form, context);
          },
          onSuccess: () {
            context.read<AuthCubit>().markUserSurveyAttempted();
            DjangoflowAppSnackbar.showInfo('Challenge updated successfully');
            context.router.replaceAll([const AppHomeRoute()]);
          },
          body: AutofillGroup(
            child: Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: kPadding),
                children: [
                  ReactiveTextField<String>(
                    formControlName: kQuestionField,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        labelText: 'Challenge',
                        hintText: ' Enter challenge',
                        fillColor: Colors.grey[200],
                        filled: true,
                        hintStyle: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w200)),
                    validationMessages: {
                      ValidationMessage.required: (_) =>
                          'Challenge must not be empty',
                    },
                    textInputAction: TextInputAction.next,
                  ),
                  textBoxSpacing,
                  ReactiveTextField<String>(
                    formControlName: kAnswerField,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        labelText: 'Answer',
                        hintText: 'Enter answer',
                        fillColor: Colors.grey[200],
                        filled: true,
                        hintStyle: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w200)),
                    validationMessages: {
                      ValidationMessage.required: (_) =>
                          'The answer must not be empty',
                    },
                    textInputAction: TextInputAction.next,
                  ),
                  textBoxSpacing,
                  textBoxSpacing,
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 3,
                    child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Examples:'),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              'Challenge: Solve the equation: 15 x 2 + 7 ?\nAnswer: 37'),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              'Challenge: In which year did I graduate from college?\nAnswer: 2010'),
                        ]),
                  )
                ],
              ),
            ),
          ),
        ),
      );

  Future<void> submitForm(FormGroup form, BuildContext context) async {
    print("submit");
    if (form.valid) {
      Map<String, dynamic> formValues = form.value;
      final question = formValues[kQuestionField] as String;
      final answer = formValues[kAnswerField] as String;
      print("form submit");
      final challenge =
          jsonEncode(Challenge(question: question, answer: answer));
      final challengeList = <String>[];
      challengeList.add(challenge);
      await AuthCubit.instance.updateChallenge(challenges: challengeList);
    } else {
      form.markAllAsTouched();
    }
  }
}
