import 'package:flutter/material.dart';

import '../Colours/Colour.dart';
import '../Style/Button.dart';
import '../Style/Text Field.dart';
import '../Style/Text_Style.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(26, 140, 26, 50),
            child: Column(
              children: [
                CustomText(text: 'Enter your phone number',
                  fontSize: 24,
                  color: MyColors.purple,
                ),
                SizedBox(height: 10),
                CustomText(text: 'Please confirm your country code and enter your phone number.',
                  fontWeight: FontWeight.w400,
                  color: MyColors.lightBlack,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(26, 10, 26, 10),
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 13.0),
                    alignment: Alignment.topLeft,
                    child: CustomText(text: 'Country',fontWeight: FontWeight.w500,color: MyColors.lightBlack,)),
                SizedBox(height: 05,),
                CustomTextField( hintText: 'India',
                  prefixImage: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/flag.png", width: 20,
                        height: 20,
                        fit: BoxFit.contain),
                  ),
                  suffixIcon: Icons.arrow_forward_ios,

                ),
                SizedBox(height: 20,),
                Container(
                    padding: EdgeInsets.only(left: 13.0),
                    alignment: Alignment.topLeft,
                    child: CustomText(text: 'Phone Number',fontWeight: FontWeight.w500,color: MyColors.lightBlack, textAlign: TextAlign.left,)),
                SizedBox(height: 05,),
                CustomTextField( hintText: '    7500180475',
                  prefixText: '+91',
                ),
                SizedBox(height: 20,),
                TB(label: 'Next', onPressed: (){})
              ],
            ),
          )
        ],
      ),
    );
  }
}