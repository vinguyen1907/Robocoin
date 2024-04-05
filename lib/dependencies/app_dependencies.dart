import 'package:get_it/get_it.dart';
import 'package:robocoin/dependencies/page_dependencies.dart';

class AppDependencies {
  static GetIt get injector => GetIt.I;
  static Future<void> setUp() async {
    await PageDependencies.setup(injector);
  }
}
