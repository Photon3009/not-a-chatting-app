import 'package:appwrite/appwrite.dart' hide Locale;
import 'package:country_code_picker/country_code_picker.dart';
import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:its_urgent/configurations/configurations.dart';
import 'package:its_urgent/features/app/presentation/builders/app_responsive_layout_builder.dart';
import 'package:its_urgent/features/authentication/presentation/listeners/login_listener_wrapper.dart';
import 'configurations/router/router.gr.dart';
import 'features/app/data/api_client.dart';
import 'features/authentication/data/blocs/auth_cubit.dart';

class ItsUrgentAppBuilder extends AppBuilder {
  ItsUrgentAppBuilder({
    super.key,
    super.onDispose,
    required AppRouter appRouter,
  }) : super(
          onInitState: (context) {},
          repositoryProviders: [
            RepositoryProvider<ApiClient>(
              create: (context) => ApiClient(
                client: Client(),
                projectId: kProjectId,
                endpoint: kApiEndpoint,
              ),
            ),
          ],
          providers: [
            BlocProvider<AppCubit>(
              create: (context) => AppCubit.instance,
            ),
            BlocProvider<AuthCubit>(
              create: (context) => AuthCubit.instance
                ..initialize(
                  context.read<ApiClient>(),
                ),
            ),
          ],
          builder: (context) => LoginListenerWrapper(
            initialUser: context.read<AuthCubit>().state.user,
            onLogin: (context, user) async {
              debugPrint("login");

              ///Trigger user survey if not attempted
              final authCubit = context.read<AuthCubit>();
              final prefs = await context.read<ApiClient>().account.getPrefs();
              final userSurveyAttempted = prefs.data[userSurveyAttemptedPref];

              Future.delayed(const Duration(seconds: 3), () {
                appRouter.push(
                  const AppHomeRoute(),
                );
                if (userSurveyAttempted == null ||
                    userSurveyAttempted.toString() == 'true') {
                  appRouter.push(
                    const UserSurveyRouter(),
                  );
                } else {
                  appRouter.push(
                    const AppHomeRoute(),
                  );
                }
              });

              await authCubit.getUser();
            },
            onLogout: (context) {
              // context.read<ChatCubit>().clearChats();
              debugPrint("logout");
            },
            child: AppCubitConsumer(
              listenWhen: (previous, current) =>
                  previous.environment != current.environment,
              listener: (context, state) async {},
              builder: (context, appState) => MaterialApp.router(
                debugShowCheckedModeBanner: false,
                scaffoldMessengerKey:
                    DjangoflowAppSnackbar.scaffoldMessengerKey,
                title: kAppTitle,
                routerConfig: appRouter.config(),
                theme: AppTheme.light,
                darkTheme: AppTheme.dark,
                themeMode: appState.themeMode,
                locale: Locale(appState.locale, ''),
                supportedLocales: const [
                  Locale('en', ''),
                ],
                localizationsDelegates: const [
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                  CountryLocalizations.delegate,
                ],
                builder: (context, child) => AppResponsiveLayoutBuilder(
                  child: SandboxBanner(
                    isSandbox: appState.environment == AppEnvironment.sandbox,
                    child: child ?? const Offstage(),
                  ),
                ),
              ),
            ),
          ),
        );
}
