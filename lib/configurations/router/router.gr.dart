// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:its_urgent/features/app/presentation/pages/app_home_page.dart'
    deferred as _i1;
import 'package:its_urgent/features/app/presentation/pages/splash_page.dart'
    deferred as _i10;
import 'package:its_urgent/features/app/presentation/pages/unknown_page.dart'
    deferred as _i11;
import 'package:its_urgent/features/authentication/presentation/pages/login_options_router_page.dart'
    deferred as _i3;
import 'package:its_urgent/features/authentication/presentation/pages/login_providers_page.dart'
    deferred as _i4;
import 'package:its_urgent/features/authentication/presentation/pages/login_router_page.dart'
    deferred as _i5;
import 'package:its_urgent/features/authentication/presentation/pages/onboarding_page.dart'
    deferred as _i6;
import 'package:its_urgent/features/authentication/presentation/pages/phone_auth_router_page.dart'
    deferred as _i7;
import 'package:its_urgent/features/authentication/presentation/pages/phone_login_page.dart'
    deferred as _i8;
import 'package:its_urgent/features/authentication/presentation/pages/phone_otp_verify_page.dart'
    deferred as _i9;
import 'package:its_urgent/features/home/presentation/pages/home_page.dart'
    deferred as _i2;
import 'package:its_urgent/features/user_survey/presentation/pages/user_survey_add_challenge.dart'
    deferred as _i12;
import 'package:its_urgent/features/user_survey/presentation/pages/user_survey_profile_page.dart'
    deferred as _i13;
import 'package:its_urgent/features/user_survey/presentation/pages/user_survey_router_page.dart'
    deferred as _i14;

abstract class $AppRouter extends _i15.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    AppHomeRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.DeferredWidget(
          _i1.loadLibrary,
          () => _i1.AppHomePage(),
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.DeferredWidget(
          _i2.loadLibrary,
          () => _i2.HomePage(),
        ),
      );
    },
    LoginOptionsRouter.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.DeferredWidget(
          _i3.loadLibrary,
          () => _i3.LoginOptionsRouterPage(),
        ),
      );
    },
    LoginProvidersRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.DeferredWidget(
          _i4.loadLibrary,
          () => _i4.LoginProvidersPage(),
        ),
      );
    },
    LoginRouter.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.DeferredWidget(
          _i5.loadLibrary,
          () => _i5.LoginRouterPage(),
        ),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.DeferredWidget(
          _i6.loadLibrary,
          () => _i6.OnboardingPage(),
        ),
      );
    },
    PhoneAuthRouter.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.DeferredWidget(
          _i7.loadLibrary,
          () => _i7.PhoneAuthRouterPage(),
        ),
      );
    },
    PhoneLoginRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.DeferredWidget(
          _i8.loadLibrary,
          () => _i8.PhoneLoginPage(),
        ),
      );
    },
    PhoneOtpVerifyRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.DeferredWidget(
          _i9.loadLibrary,
          () => _i9.PhoneOtpVerifyPage(),
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.DeferredWidget(
          _i10.loadLibrary,
          () => _i10.SplashPage(),
        ),
      );
    },
    UnknownRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.DeferredWidget(
          _i11.loadLibrary,
          () => _i11.UnknownPage(),
        ),
      );
    },
    UserSurveyAddChallengeRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.DeferredWidget(
          _i12.loadLibrary,
          () => _i12.UserSurveyAddChallengePage(),
        ),
      );
    },
    UserSurveyProfileRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.DeferredWidget(
          _i13.loadLibrary,
          () => _i13.UserSurveyProfilePage(),
        ),
      );
    },
    UserSurveyRouter.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.DeferredWidget(
          _i14.loadLibrary,
          () => _i15.WrappedRoute(child: _i14.UserSurveyRouterPage()),
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AppHomePage]
class AppHomeRoute extends _i15.PageRouteInfo<void> {
  const AppHomeRoute({List<_i15.PageRouteInfo>? children})
      : super(
          AppHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppHomeRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i15.PageRouteInfo<void> {
  const HomeRoute({List<_i15.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginOptionsRouterPage]
class LoginOptionsRouter extends _i15.PageRouteInfo<void> {
  const LoginOptionsRouter({List<_i15.PageRouteInfo>? children})
      : super(
          LoginOptionsRouter.name,
          initialChildren: children,
        );

  static const String name = 'LoginOptionsRouter';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginProvidersPage]
class LoginProvidersRoute extends _i15.PageRouteInfo<void> {
  const LoginProvidersRoute({List<_i15.PageRouteInfo>? children})
      : super(
          LoginProvidersRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginProvidersRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginRouterPage]
class LoginRouter extends _i15.PageRouteInfo<void> {
  const LoginRouter({List<_i15.PageRouteInfo>? children})
      : super(
          LoginRouter.name,
          initialChildren: children,
        );

  static const String name = 'LoginRouter';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i6.OnboardingPage]
class OnboardingRoute extends _i15.PageRouteInfo<void> {
  const OnboardingRoute({List<_i15.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i7.PhoneAuthRouterPage]
class PhoneAuthRouter extends _i15.PageRouteInfo<void> {
  const PhoneAuthRouter({List<_i15.PageRouteInfo>? children})
      : super(
          PhoneAuthRouter.name,
          initialChildren: children,
        );

  static const String name = 'PhoneAuthRouter';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i8.PhoneLoginPage]
class PhoneLoginRoute extends _i15.PageRouteInfo<void> {
  const PhoneLoginRoute({List<_i15.PageRouteInfo>? children})
      : super(
          PhoneLoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'PhoneLoginRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i9.PhoneOtpVerifyPage]
class PhoneOtpVerifyRoute extends _i15.PageRouteInfo<void> {
  const PhoneOtpVerifyRoute({List<_i15.PageRouteInfo>? children})
      : super(
          PhoneOtpVerifyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PhoneOtpVerifyRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SplashPage]
class SplashRoute extends _i15.PageRouteInfo<void> {
  const SplashRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i11.UnknownPage]
class UnknownRoute extends _i15.PageRouteInfo<void> {
  const UnknownRoute({List<_i15.PageRouteInfo>? children})
      : super(
          UnknownRoute.name,
          initialChildren: children,
        );

  static const String name = 'UnknownRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i12.UserSurveyAddChallengePage]
class UserSurveyAddChallengeRoute extends _i15.PageRouteInfo<void> {
  const UserSurveyAddChallengeRoute({List<_i15.PageRouteInfo>? children})
      : super(
          UserSurveyAddChallengeRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserSurveyAddChallengeRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i13.UserSurveyProfilePage]
class UserSurveyProfileRoute extends _i15.PageRouteInfo<void> {
  const UserSurveyProfileRoute({List<_i15.PageRouteInfo>? children})
      : super(
          UserSurveyProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserSurveyProfileRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i14.UserSurveyRouterPage]
class UserSurveyRouter extends _i15.PageRouteInfo<void> {
  const UserSurveyRouter({List<_i15.PageRouteInfo>? children})
      : super(
          UserSurveyRouter.name,
          initialChildren: children,
        );

  static const String name = 'UserSurveyRouter';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}
