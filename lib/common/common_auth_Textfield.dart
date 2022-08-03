import 'package:flutter/material.dart';

class CommonAuthTextField extends StatelessWidget {
  final String hinttext;
  final TextEditingController controller;
  final Function()? onTap;
  CommonAuthTextField({
    required this.hinttext,
    Key? key,
    required this.controller,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 268,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: const TextStyle(
            fontFamily: 'Mulish',
            height: 1.25,
            fontWeight: FontWeight.w600,
            color: Color(
              0xffBEBEBE,
            ),
          ),
          contentPadding: const EdgeInsets.fromLTRB(14, 12, 0, 0),
          fillColor: const Color(0xff6FCF97),
          filled: true,
          focusedBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff5EDE99), width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.lightGreen.shade50, width: 1),
          ),
        ),
      ),
    );
  }
}
