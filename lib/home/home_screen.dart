import 'package:flutter/material.dart';
import 'package:sougha_flutter_project/common/app_colors.dart';
import 'package:sougha_flutter_project/common/app_string.dart';
import 'package:sougha_flutter_project/common/hexColor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/ic_transaction.png',
                    width: 50,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Transactions',
                    style: TextStyle(
                        color: hexColor(AppColors.color212121),
                        fontFamily: 'josefinsans'),
                  )
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/images/ic_claims.png',
                    width: 50,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Claims',
                    style: TextStyle(
                        color: hexColor(AppColors.color212121),
                        fontFamily: 'josefinsans'),
                  )
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/images/ic_calculator.png',
                    width: 50,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Calculator',
                    style: TextStyle(
                        color: hexColor(AppColors.color212121),
                        fontFamily: 'josefinsans'),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/ic_notification_read.png',
                    width: 25,
                  ),
                ],
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Hello, Drashti",
                  style: TextStyle(
                      color: hexColor(AppColors.color212121),
                      fontFamily: 'josefinsans',
                      fontSize: 24),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              transform: GradientRotation(315),
                              stops: const [
                                0.1,
                                0.9,
                                0.0
                              ],
                              colors: [
                                hexColor(AppColors.colorStartGradient),
                                hexColor(AppColors.colorgreygradient),
                                hexColor(AppColors.colorEndGradient)
                              ]),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        AppString.txtRewardBalance,
                                        style: TextStyle(
                                            color: Colors.white54,
                                            fontFamily: 'josefinsans',
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 6.0),
                                        child: Text(
                                          "129,879",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'josefinsans',
                                              fontSize: 28,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 8.0),
                                        child: Text(
                                          "AED 1295",
                                          style: TextStyle(
                                              color: Colors.white54,
                                              fontFamily: 'josefinsans',
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                            Row(
                              children: const [
                                Text(
                                  "PLATINIUM",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'josefinsans',
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "1 3 5 7",
                                    style: TextStyle(
                                        color: Colors.white54,
                                        fontFamily: 'josefinsans',
                                        fontSize: 20),
                                  ),
                                  Text(
                                    "0 0 3 4",
                                    style: TextStyle(
                                        color: Colors.white54,
                                        fontFamily: 'josefinsans',
                                        fontSize: 20),
                                  ),
                                  Text(
                                    "9 8 3 4",
                                    style: TextStyle(
                                        color: Colors.white54,
                                        fontFamily: 'josefinsans',
                                        fontSize: 20),
                                  ),
                                  Text(
                                    "2 3 6 7",
                                    style: TextStyle(
                                        color: Colors.white54,
                                        fontFamily: 'josefinsans',
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
