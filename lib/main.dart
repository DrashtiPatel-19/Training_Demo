import 'package:flutter/material.dart';
import 'package:sougha_flutter_project/common/app_colors.dart';
import 'package:sougha_flutter_project/signup/ui/signup_screen.dart';
import 'package:sougha_flutter_project/splash/splash_screen.dart';
import 'package:sougha_flutter_project/welcome_screen/welcome_screen.dart';

import 'common/create_material_colors.dart';
import 'common/hexColor.dart';
import 'home/home_screen.dart';
import 'login/ui/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash',
      routes: {
        'splash': (context) => const SplashScreen(),
        '/welcome': (context) => const WelcomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/home': (context) => const HomeScreen(),

      },
      theme: ThemeData(
        primarySwatch: createMaterialColor(hexColor(AppColors.colorBackground)),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
