import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sougha_flutter_project/common/app_string.dart';
import 'package:sougha_flutter_project/login/controller/login_controller.dart';
import '../../common/app_colors.dart';
import '../../common/hexColor.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  LoginController loginController = Get.put(LoginController());
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Icon(
              Icons.arrow_back_outlined,
              color: hexColor(AppColors.color686662),
            ),
          ),
          backgroundColor: Colors.transparent,
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 10),
              child: Text(
                AppString.txtSkip,
                style: TextStyle(
                    color: hexColor(AppColors.color686662),
                    fontSize: 18,
                    fontFamily: 'josefinsans'),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 280,
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
                      hexColor('#A8A59F'),
                      hexColor(AppColors.colorGradient)
                    ]),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Center(
                  child: Image.asset(
                    'assets/images/ic_main_logo.png',
                    width: 180,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Text(
                    AppString.txtSIGNIN,
                    style: TextStyle(
                        color: hexColor(AppColors.color212121),
                        fontFamily: 'josefinsans',
                        fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    AppString.txtLoginSubTitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: hexColor(AppColors.color212121),
                        fontFamily: 'josefinsans',
                        fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        controller: loginController.emailController.value,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: hexColor(AppColors.colorFocusBorder))),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: hexColor(AppColors.colorFocusBorder)),
                          ),
                          label: Text(
                            AppString.txtEmail,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'josefinsans',
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: loginController.passwordController.value,
                          decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: hexColor(AppColors.colorFocusBorder))),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: hexColor(AppColors.colorFocusBorder)),
                        ),
                        label: Text(
                          AppString.txtPassword,
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'josefinsans',
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                      )),
                    ],
                  ),
                ),

                /* decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(500),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 24, right: 24, top: 40),
                    child: Row(
                      children: [

                       */ /* Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(500),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child:
                        ),*/ /*
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(500),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: TextFormField(
                            controller: mobileNo,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: hexColor(
                                            AppColors.colorFocusBorder))),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: hexColor(
                                            AppColors.colorFocusBorder))),
                                hintText: "95 123 92200",
                                hintStyle: TextStyle(
                                    color: hexColor(AppColors.colorHintText),
                                    fontFamily: 'josefinsans',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18)),
                          ),
                        )
                      ],
                    ),
                  ),*/
                /*Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(500),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 24, right: 24, top: 20),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(500),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Text(
                              AppString.txtPassword,
                              style: TextStyle(
                                  color: hexColor('#BFBFBFCC'),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  fontFamily: 'josefinsans'),
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(500),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: TextFormField(
                            controller: password,
                            obscureText: _obscureText,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: hexColor(
                                            AppColors.colorFocusBorder))),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: hexColor(
                                            AppColors.colorFocusBorder))),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _obscureText
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.black45,
                                  ),
                                  onPressed: () {
                                    _toggle();
                                  },
                                ),
                                hintText: AppString.txtPassHint,
                                hintStyle: TextStyle(
                                    color: hexColor(AppColors.colorHintText),
                                    fontFamily: 'josefinsans',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),*/
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, right: 25),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        AppString.txtResetPassword,
                        style: TextStyle(
                            color: hexColor(AppColors.colorResetPass),
                            fontFamily: 'josefinsans'),
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 20.0, left: 20, top: 30),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          minimumSize: const Size.fromHeight(50),
                          backgroundColor: hexColor(AppColors.color686662)),
                      onPressed: () {
                        loginController.callLoginApi();
                        Navigator.pushNamed(context, '/home');
                      },
                      child: Text(
                        AppString.txtSignIn,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'josefinsans',
                            fontSize: 16),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Text(
                    AppString.txtOr,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'josefinsans',
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 20.0, left: 20, top: 30),
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
                        style: TextStyle(
                            color: hexColor(AppColors.color686662),
                            fontFamily: 'josefinsans',
                            fontSize: 16),
                      )),
                ),
              ],
            )
          ],
        ));
  }
}
