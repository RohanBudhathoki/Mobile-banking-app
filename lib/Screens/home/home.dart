import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobilebankingapp/config/appstring.dart';
import 'package:mobilebankingapp/config/sizebox.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff6FCF97),
      body: ListView(
        children: [
          const SpaceH50(),
          Padding(
            padding: EdgeInsets.only(left: 40.w),
            child: Text(
              AppString.cards,
              style: TextStyle(
                  color: const Color(0xffFFFFFF),
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    ));
  }
}
