import 'package:flutter/material.dart';
import 'package:upwork_001_flutter_mpjs_screen/design_ui_screen.dart';

// import 'features/feature_project_management/screens/my_page_screen.dart';
import 'features/feature_project_management/screens/main_screen.dart';
import 'routes/nav_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'dev_flutter_3_pages_readonly--from-clone',

      // initialRoute: NavRoutes.splash,
      initialRoute: DesignUiScreen.routeName,
      routes: {
        // NavRoutes.splash: (context) {
        //   return WillPopScope(
        //     onWillPop: () async {
        //       return false;
        //     },
        //     child: SplashScreen(),
        //   );
        // },
        // ...
        DesignUiScreen.routeName: (context) => DesignUiScreen(),
        NavRoutes.myprojects: (context) {
          return WillPopScope(
            onWillPop: () async {
              return false;
            },
            child: const MyProjectsScreen(),
          );
        },

        // ...
        // NavRoutes.about: (context) {
        //   return WillPopScope(
        //     onWillPop: () async {
        //       return false;
        //     },
        //     child: MyAboutUsScreen(),
        //   );
        // },
      },
    );
  }
}
