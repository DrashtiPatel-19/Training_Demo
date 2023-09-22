import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sougha_flutter_project/common/app_string.dart';
import '../common/app_colors.dart';
import '../common/hexColor.dart';
import 'package:get/get.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 10),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.close,
                  color: hexColor(AppColors.color686662),
                )),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              stops: const [
                0.1,
                0.9,
                0.0
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
            Container(
              width: 380,
              height: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomLeft,
                    stops: const [
                      0.1,
                      0.7,
                      0.2
                    ],
                    colors: [
                      hexColor('#C4C0BA'),
                      hexColor('#CFCBC5'),
                      hexColor('#CFCBC5')
                    ]),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 24.0),
                    child: Text(
                      AppString.txtWelcome,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'josefinsans',
                          fontWeight: FontWeight.w400,
                          fontSize: 20),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      AppString.txtSubTitle,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'josefinsans',
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50.0, right: 20, left: 20),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            minimumSize: const Size.fromHeight(50),
                            backgroundColor: hexColor(AppColors.color686662)),
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                          },
                        child: Text(
                          AppString.txtSignIn,
                          style: TextStyle(color: Colors.white , fontFamily: 'josefinsans' , fontSize: 16),
                        )),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            minimumSize: const Size.fromHeight(50),
                            backgroundColor: hexColor('#E1DDD9')),
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: Text(
                          AppString.txtCreateAccount,
                          style: TextStyle(color: hexColor(AppColors.color686662) , fontFamily: 'josefinsans' , fontSize: 16),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
