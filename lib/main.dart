
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:spod_app/screen/loading_screen/load_screen.dart';
import 'package:spod_app/theme.dart';

import 'firebase_options.dart';
import 'helper/shared_prefrences.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // final prefs = await SharedPreferences.getInstance();
  await CacheHelper.init();

  // final skipOnBoarding = prefs.getBool("skipOnBoarding") ?? false;
  runApp(MyApp( ));
  // runApp(MyApp(skipOnBoarding: skipOnBoarding));
}

class MyApp extends StatelessWidget {

  final bool ?skipOnBoarding;

  const MyApp({Key? key,   this.skipOnBoarding}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // home: OnboardingScreen(),
      home: LoadingScreen(),

      //   routes: {
    //     LoginPage.id: (context) => LoginPage(),
    //     RegisterPage.id: (context) => RegisterPage(),
    // RouteNamed.user : (context) => HomeScreen(),
    //     RouteNamed.client : (context) => HomeScreenCli(),
    //
    //
    //   },
    //   initialRoute: LoginPage.id,

      title: 'FooTBall Match',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: createMaterialColor(primaryColor500),
          canvasColor: colorWhite),
      // home: skipOnBoarding? LoginPage(): OnboardingScreen(),
    );
  }
}
