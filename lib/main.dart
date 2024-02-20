import 'package:appwrite/appwrite.dart';
import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/material.dart';
import 'package:its_urgent/configurations/router/router.dart';
import 'package:its_urgent/its_urgent_app_builder.dart';
import 'utils/utils.dart';

Future<void> main() async {
  // Runs the runApp method
  DjangoflowAppRunner.run(
    onException: (exception, stackTrace) {
      debugPrint('Exception Caught -- $exception');
      // Dispatch exception to error reporters
      // ExeptionFilter.filter(exception); returns: true -> show exception to user or false -> do not show
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        if (exception is AppwriteException &&
            (exception.message?.startsWith('Failed host lookup:') ?? false)) {
          DjangoflowAppSnackbar.showError(
            'No internet connection',
          );
        }

        // DjangoflowAppSnackbar.showError(
        //   exception is AppwriteException
        //       ? exception.message ?? 'Unknown error'
        //       : ExceptionFormatter.format(exception),
        // );
      });
    },
    rootWidgetBuilder: (appBuilder) async {
      final router = AppRouter();

      return appBuilder(
        ItsUrgentAppBuilder(
          appRouter: router,
        ),
      );
    },
  );
}
