import 'package:auto_route/auto_route.dart';
import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:its_urgent/configurations/configurations.dart';
import 'package:its_urgent/configurations/router/router.gr.dart';
import 'package:its_urgent/features/app/presentation/its_urgent_image_picker.dart';
import 'package:its_urgent/features/authentication/data/blocs/auth_cubit.dart';
import 'package:its_urgent/features/user_survey/presentation/pages/user_survey_base_wrapper.dart';
import 'package:reactive_forms/reactive_forms.dart';

@RoutePage()
class UserSurveyProfilePage extends StatelessWidget {
  const UserSurveyProfilePage({super.key});

  FormGroup _formBuilder() => fb.group({
        kNameField: FormControl<String>(
          validators: [
            Validators.required,
          ],
          value: AuthCubit.instance.state.user?.name,
        ),
        kEmailField: FormControl<String>(
          validators: [
            Validators.required,
            Validators.email,
          ],
          value: AuthCubit.instance.state.user?.email,
        ),
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
            final authState = AuthCubit.instance.state;

            if (authState.pickedImagePath == null &&
                authState.user?.avatar == null) {
              throw Exception('Please pick a profile picture');
            }

            if (authState.pickedImagePath != null) {
              await AuthCubit.instance.uploadUserImage();
            }
            print("onconfirm2");
            await submitForm(form, context);
          },
          onSuccess: () {
            DjangoflowAppSnackbar.showInfo('Profile updated successfully');
            context.router.push(const UserSurveyAddChallengeRoute());
          },
          body: AutofillGroup(
            child: Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: kPadding),
                children: [
                  BlocBuilder<AuthCubit, AuthState>(
                    builder: (context, state) {
                      final authCubit = context.read<AuthCubit>();
                      return Align(
                        alignment: Alignment.center,
                        child: ItsUrgentImagePicker(
                          pickedImagePath: state.pickedImagePath,
                          imageUrl: AuthCubit.instance.state.user?.avatar,
                          onImagePicked: (image) => context
                              .read<AuthCubit>()
                              .updatePickedPhoto(image),
                          clearImageCallback: () =>
                              authCubit.clearPickedPhoto(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: kPadding * 4,
                  ),
                  ReactiveTextField<String>(
                    formControlName: kNameField,
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      labelText: 'Full Name',
                    ),
                    validationMessages: {
                      ValidationMessage.required: (_) =>
                          'Name must not be empty',
                    },
                    autofillHints: const [AutofillHints.name],
                    textInputAction: TextInputAction.next,
                  ),
                  textBoxSpacing,
                  ReactiveTextField<String>(
                    formControlName: kEmailField,
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      labelText: 'Email Address',
                    ),
                    validationMessages: {
                      ValidationMessage.required: (_) =>
                          'The email must not be empty',
                      ValidationMessage.email: (_) =>
                          'Please enter a valid email',
                    },
                    autofillHints: const [AutofillHints.email],
                    textInputAction: TextInputAction.next,
                  ),
                  textBoxSpacing,
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
      final name = formValues[kNameField] as String;
      final email = formValues[kEmailField] as String;
      print("form submit");
      await AuthCubit.instance.updateProfile(
        name: name,
        email: email,
      );
    } else {
      form.markAllAsTouched();
    }
  }
}
