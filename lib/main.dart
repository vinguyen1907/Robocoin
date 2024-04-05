import 'package:flutter/material.dart';
import 'package:robocoin/dependencies/app_dependencies.dart';
import 'package:robocoin/resources/themes.dart';
import 'package:robocoin/router/router.dart';
import 'package:robocoin/pages/choose_login_method/choose_login_method_page.dart';

Future<void> main() async {
  await AppDependencies.setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Robocoin',
      theme: AppThemes().lightTheme,
      darkTheme: AppThemes().darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.root,
      onGenerateRoute: (settings) => Routes.routes(settings),
      home: const ChooseLoginMethodPage(),
    );
  }
}
