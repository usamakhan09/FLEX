
import 'package:flex2/core/utils/pref_utils.dart';

import '../../data/apiClient/api_client.dart';
import '../app_export.dart';
import '../network/network_info.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(ApiClient());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
