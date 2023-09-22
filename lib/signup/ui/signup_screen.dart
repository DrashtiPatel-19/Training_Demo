import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sougha_flutter_project/signup/controller/signup_controller.dart';
import '../../common/app_colors.dart';
import '../../common/app_string.dart';
import '../../common/hexColor.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  bool _obscureText = true;
  bool changeState = true;

  SignupController signupController = Get.put(SignupController());

  void _togglePassword() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _toggleFaceId() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(
          child: Icon(
            Icons.arrow_back_outlined,
            color: hexColor(AppColors.color686662),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 10),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                AppString.txtClose,
                style: TextStyle(
                    color: hexColor(AppColors.color686662),
                    fontSize: 18,
                    fontFamily: 'josefinsans'),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Center(
              child: Text(
                AppString.txtSignup,
                style: TextStyle(
                    color: hexColor(AppColors.color212121),
                    fontFamily: 'josefinsans',
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14.0),
              child: Text(
                AppString.txtLoginSubTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: hexColor(AppColors.color212121),
                    fontFamily: 'josefinsans',
                    fontSize: 20),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 20),
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
                          AppString.txtFullname,
                          style: TextStyle(
                              color: hexColor(AppColors.color212121),
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
                        controller: signupController.nameController.value,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        hexColor(AppColors.colorFocusBorder))),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        hexColor(AppColors.colorFocusBorder))),
                            hintText: "Naeem Ahmed",
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
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 20),
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
                          AppString.txtMobile,
                          style: TextStyle(
                              color: hexColor(AppColors.color212121),
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
                        controller: signupController.mobileController.value,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        hexColor(AppColors.colorFocusBorder))),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        hexColor(AppColors.colorFocusBorder))),
                            hintText: "+971 50 123 4567",
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
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 20),
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
                          AppString.txtEmail,
                          style: TextStyle(
                              color: hexColor(AppColors.color212121),
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
                        controller: signupController.emailController.value,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        hexColor(AppColors.colorFocusBorder))),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        hexColor(AppColors.colorFocusBorder))),
                            hintText: "iam.naeem@hotmail.com",
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
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 20),
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
                              color: hexColor(AppColors.color212121),
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
                        controller: signupController.passwordController.value,
                        obscureText: _obscureText,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        hexColor(AppColors.colorFocusBorder))),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        hexColor(AppColors.colorFocusBorder))),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.black45,
                              ),
                              onPressed: () {
                                _togglePassword();
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
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 20),
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
                          AppString.txtCPass,
                          style: TextStyle(
                              color: hexColor(AppColors.color212121),
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
                        controller: signupController.cPasswordController.value,
                        obscureText: _obscureText,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        hexColor(AppColors.colorFocusBorder))),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        hexColor(AppColors.colorFocusBorder))),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.black45,
                              ),
                              onPressed: () {
                                _togglePassword();
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
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: Text(
                          AppString.txtAllowFaceId,
                          style:
                              TextStyle(color: hexColor(AppColors.color212121) , fontFamily: 'josefinsans'),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Switch(value: changeState, onChanged: (value) {

                      },)
                      /*IconButton(
                          onPressed: () {},
                          constraints: BoxConstraints(),
                          padding: EdgeInsets.all(0.0),
                          icon: SvgPicture.asset(
                            'assets/images/t_off.svg',
                          )),*/
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      constraints: BoxConstraints(),
                      padding: EdgeInsets.all(0.0),
                      icon: SvgPicture.asset('assets/images/unchecked.svg')),
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: RichText(
                        text: TextSpan(
                            text:
                                "By signing up, you are agreeing that you are 18+ \n",
                            style: TextStyle(
                                color: hexColor(AppColors.color212121),
                                fontFamily: 'josefinsans',
                                fontSize: 15),
                            children: [
                          TextSpan(text: "and accept Soughah Reward's "),
                          TextSpan(
                              text: "Terms of Use.",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: hexColor(AppColors.colorResetPass)))
                        ])),
                  )
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
                    signupController.callSignupApi();
                    //Navigator.pushNamed(context, '/login');
                  },
                  child: Text(
                    AppString.txtSIGNUP,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'josefinsans',
                        fontSize: 16),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
