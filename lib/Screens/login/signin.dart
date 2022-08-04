import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobilebankingapp/common/common_auth_Textfield.dart';
import 'package:mobilebankingapp/common/common_authbutton.dart';
import 'package:mobilebankingapp/config/appstring.dart';
import 'package:mobilebankingapp/config/sizebox.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff6FCF97),
        body: Column(
          children: [
            const SpaceH50(),
            Center(
              child: Text(
                AppString.greenApple,
                style: TextStyle(
                    fontSize: 20.sp,
                    color: const Color(0xffFFFFFF),
                    fontWeight: FontWeight.w700),
              ),
            ),
            const SpaceH3(),
            Center(
              child: Text(
                AppString.mobilebankingapp,
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 10.sp,
                    color: const Color(0xffFFFFFF)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/leftdesign.svg'),
                Image.asset('assets/greenapple.png'),
                // SvgPicture.asset('assets/greenApple.svg'),
                SvgPicture.asset('assets/rightdesign.svg')
              ],
            ),
            const SpaceH38(),
            Center(
              child: Text(
                AppString.welcome,
                style: TextStyle(
                    fontSize: 48.sp,
                    color: const Color(0xffFFFFFF),
                    fontWeight: FontWeight.w700),
              ),
            ),
            const SpaceH61(),
            CommonAuthTextField(
                hinttext: 'username', controller: usernameController),
            CommonAuthTextField(hinttext: 'Email', controller: emailController),
            CommonAuthTextField(
                hinttext: 'Password', controller: passwordController),
            const SpaceH50(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/bottomleftdesign.svg'),
                const CommonAuthButton(text: 'Sign Up'),
                Image.asset('assets/botomright.jpg')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
