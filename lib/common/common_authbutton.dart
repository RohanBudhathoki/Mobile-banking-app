import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonAuthButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  const CommonAuthButton({
    required this.text,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(32.r)),
      width: 100.w,
      height: 45.h,
      child: ElevatedButton(
        onPressed: onPressed ?? () {},
        style: ElevatedButton.styleFrom(
          primary: const Color(0xff0B9A47),
          elevation: 0,
        ),
        child: Text(
          text,
          style: const TextStyle(
              height: 1.3,
              color: Color(0xffFFFFFF),
              fontWeight: FontWeight.w600,
              fontFamily: 'Mulish'),
        ),
      ),
    );
  }
}
