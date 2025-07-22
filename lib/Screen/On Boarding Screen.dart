import 'package:bike_ride_sharing_app/Colours/Colour.dart';
import 'package:bike_ride_sharing_app/Style/Button.dart';
import 'package:bike_ride_sharing_app/Style/Text_Style.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: MyColors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(height: 100,),
            Container(
              child:Column(
                children: [
                  CustomText(text: 'Assist with Navigation',
                    fontSize: 24,
                    color: MyColors.purple,
                  ),
                  CustomText(text: 'Use real-time route information to schedule your ride.',
                    fontWeight: FontWeight.w400,
                    color: MyColors.lightBlack,
                  ),
                ],

        )



            ),
            SizedBox(height: 50,),
            TB(label: 'Next', onPressed: (){})
          ],
        ),
      ),
    );
  }
}
