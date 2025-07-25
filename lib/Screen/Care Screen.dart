import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Colours/Colour.dart';
import '../Style/Text_Style.dart';

class CareScreen extends StatefulWidget {
  const CareScreen({super.key});

  @override
  State<CareScreen> createState() => _CareScreenState();
}

class _CareScreenState extends State<CareScreen> {
  List<Map<String, String>> products = [
    {
      'image':'assets/images/20.png',
      'name' : 'Annual Maintenance ',
      'price': '₹ 900',
      'discount': '₹ 1,000',
      'percentage': '10% Off',
    },
    {
      'image':'assets/images/21.png',
      'name' : 'Teflon Coating',
      'price': '₹ 1350',
      'discount': '₹ 1500',
      'percentage': '10% Off',
    },
    {
      'image':'assets/images/22.png',
      'name' : 'Annual Maintenance ',
      'price': '₹ 900',
      'discount': '₹ 1,000',
      'percentage': '10% Off',
    },
    {
      'image':'assets/images/23.png',
      'name' : 'Annual Maintenance ',
      'price': '₹ 900',
      'discount': '₹ 1,000',
      'percentage': '10% Off',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        title: Padding(padding: EdgeInsets.only(left: .0000000000000000000000001
        ),
            child: CustomText(text: "Care", color: MyColors.white,)
        ),
        toolbarHeight: 44,
        titleSpacing: 0,
        centerTitle: false,
        leading: Icon(Icons.menu,color: MyColors.white),
        backgroundColor: MyColors.purple,
        actions: [
          IconButton(onPressed: (){},icon:Icon (Icons.search), color: MyColors.white,),
          Stack(children: [
            IconButton(onPressed: (){},icon:Icon (Icons.shopping_cart_outlined),color: MyColors.white,),
            Positioned(
              right: 9,top: 10,
              child:
              CircleAvatar(
                radius: 6,
                backgroundColor: Color(0xffFF4646),
                child: CustomText(text: '3', color: MyColors.white,fontSize: 9,),
              ),
            ),
          ],),
          IconButton(onPressed: (){},icon:Icon (Icons.favorite_border),color: MyColors.white,),
        ], //action
        bottom: Tab(

          child: Container(
            padding: EdgeInsets.only(left: 20,right: 20,bottom: 10),
             alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
                color: MyColors.white,
              border: Border(
                bottom: BorderSide(
                  width: 3,
                  color: Color(0xffF3F2FF)
                )
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(child: CustomText(text: 'Bike Name', fontSize: 14,fontWeight: FontWeight.w500,)),
                InkWell(
                  child: Row(
                    children: [
                      CustomText(text: 'Change',color: MyColors.purple,fontSize: 14,fontWeight: FontWeight.w500,),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),

      body:
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child:
          Column(
            children: [
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(child: CustomText(text: 'Care Recommendations')),
                  InkWell(
                    child: Row(
                      children: [
                        CustomText(text: 'View all',color: MyColors.purple,fontSize: 14,fontWeight: FontWeight.w400,),
                        Icon(Icons.arrow_forward_ios,color: MyColors.purple,)
                      ],
                    ),
                  ),

                ],
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                child: Row(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                             height:91,
                            width: 110,
                            child: Image.asset('assets/images/17.png', fit: BoxFit.cover,),

                          ),
                          CustomText(text: 'Spark Plug', fontWeight: FontWeight.w500,fontSize: 14,color: MyColors.lightBlack,)
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height:91,
                            width: 110,
                            child: Image.asset('assets/images/18.png', fit: BoxFit.cover,),

                          ),
                          CustomText(text: 'Clutch Shoe', fontWeight: FontWeight.w500,fontSize: 14,color: MyColors.lightBlack,)
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height:91,
                            width: 110,
                            child: Image.asset('assets/images/19.png', fit: BoxFit.cover,),

                          ),
                          CustomText(text: 'Hose Fuel', fontWeight: FontWeight.w500,fontSize: 14,color: MyColors.lightBlack,)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(child: CustomText(text: 'Buy Service Packages')),
                  InkWell(
                    child: Row(
                      children: [
                        CustomText(text: 'View all',color: MyColors.purple,fontSize: 14,fontWeight: FontWeight.w400,),
                        Icon(Icons.arrow_forward_ios,color: MyColors.purple,)
                      ],
                    ),
                  ),

                ],
              ),
              SizedBox(height: 12,),
              GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,),
                  itemCount: 4,
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (context , index) {
                return Container(
                  height: 162,
                  width: 173,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 110,
                        width: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: DecorationImage(image: AssetImage(products[index] ['image']?? 'No'), fit: BoxFit.cover)
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 1,right: 7,top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: products[index] ['name']?? 'No',
                              fontSize: 14,fontWeight: FontWeight.w500,color: MyColors.lightBlack,),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(child: Text(products[index] ['price']?? 'No',
                                  style: GoogleFonts.inter(
                                    fontSize: 16, fontWeight: FontWeight.w600,
                                    color: MyColors.black,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),),
                                Expanded(
                                  child: Text(products[index] ['discount']?? 'No',
                                    style: GoogleFonts.inter(
                                        fontSize: 12, fontWeight: FontWeight.w400,
                                        color: MyColors.iconColor,
                                        decoration: TextDecoration.lineThrough
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Expanded(
                                  child: Text(products[index] ['percentage']?? 'No',
                                    style: GoogleFonts.inter(
                                      fontSize: 12, fontWeight: FontWeight.w400,
                                      color: MyColors.purple,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.end,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                );
                  },
                  ),

            ],
          ),
        ),
      ),
    );
  }
}
