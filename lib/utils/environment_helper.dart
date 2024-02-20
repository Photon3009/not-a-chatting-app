import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:its_urgent/configurations/configurations.dart';

class EnvironmentHelper {
  String getDatabaseId() => getEnvId();

  String getStorageBucketId() => getEnvId();

  String getEnvId() =>
      AppCubit.instance.state.environment == AppEnvironment.sandbox
          ? envIdDev
          : envIdProd;
}
