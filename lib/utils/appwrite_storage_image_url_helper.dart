import 'package:its_urgent/configurations/configurations.dart';
import 'package:its_urgent/utils/environment_helper.dart';

String getStorageFileUrl(String fileId) => '$kApiEndpoint/storage/buckets/'
    '${EnvironmentHelper().getStorageBucketId()}/'
    'files/$fileId/view';
