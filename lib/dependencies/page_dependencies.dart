import 'package:get_it/get_it.dart';
import 'package:robocoin/pages/choose_login_method/choose_login_method_page.dart';

import '../router/router.dart';

class PageDependencies {
  static Future<void> setup(GetIt injector) async {
    injector.registerFactory(() => const ChooseLoginMethodPage(), instanceName: Routes.chooseLoginMethod);
  }
}
