import 'package:bike_ride_sharing_app/Style/Text_Style.dart';
import 'package:flutter/material.dart';

import '../Colours/Colour.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                MyColors.lightPurple,
                MyColors.purple,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: SizedBox(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(text: "T-Connect",
                  fontFamily: 'Josefin Sans',
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    color: MyColors.white,
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
