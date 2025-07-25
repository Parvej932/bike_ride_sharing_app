import 'package:bike_ride_sharing_app/Colours/Colour.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final String hintText;

  final Widget? prefixImage;
  final IconData? suffixIcon;
  final String? prefixText;
  final String? suffixText;
  final Color backgroundColor;
  final double? widthFactor; // e.g., 0.9 means 90% width
  final double? height;

  const CustomTextField({
    super.key,
    this.controller,
    this.labelText,
    required this.hintText,
    this.suffixIcon,
    this.prefixImage,
    this.prefixText,
    this.suffixText,
    this.backgroundColor = const Color(0xFFF5F5F5),
    this.widthFactor = 0.9,
    this.height = 48,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * (widthFactor ?? 0.9),
      height: height,
      padding: const EdgeInsets.fromLTRB(10,5, 5, 2),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      alignment: Alignment.center,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          labelStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: 'Inter',
            color: MyColors.black,
          ),
          hintStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: 'Inter',
            color: MyColors.black,
          ),
          prefixIcon: prefixImage != null
              ? Padding(
            padding: const EdgeInsets.all(1.0),
            child: prefixImage,
          )
              : null,
          suffixIcon: suffixIcon != null ? Icon(suffixIcon, size: 20,color: MyColors.iconColor) : null,
          prefix: prefixText != null
              ? Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: Text(
              prefixText!,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'Inter',
                color: MyColors.black,
              ),
            ),
          )
              : null,

          suffixText: suffixText,
          prefixStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: 'Inter',
            color: MyColors.black,
          ),
          suffixStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: 'Inter',
            color: MyColors.black,
          ),
          border: InputBorder.none,
        ),
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontFamily: 'Inter',
          color: MyColors.black,
        ),
      ),
    );
  }
}
