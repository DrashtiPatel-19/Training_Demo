import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sougha_flutter_project/common/app_colors.dart';
import 'package:sougha_flutter_project/common/hexColor.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/welcome');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              stops: const [
                0.1,
                0.8,
                0.1
              ],
              colors: [
                hexColor('#CFCBC5'),
                hexColor(AppColors.colorGradient),
                hexColor(AppColors.colorGradient)
              ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/ic_main_logo.png',
                    width: 250,
                  ),
                ],
              ),
            ),
           /* Row(
              children: [
                Expanded(child:
                Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Text("Get Started"),
                )
                )
              ],
            )*/
          ],
        ),
      ),
    );
  }
}
