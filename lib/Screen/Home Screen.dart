import 'package:bike_ride_sharing_app/Style/Text_Style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Colours/Colour.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
  List<Map<String, String>> deals = [
    {
      'image':'assets/images/27.png',
      'name' : 'Racing Dual Visor Helmet',
      'price': '₹ 4,079',
      'discount': '₹ 5,099',
      'percentage': '20% Off',
      'icon': 'assets/images/star.png',
      'rating': '4.8(212)',
    },
    {
      'image':'assets/images/28.png',
      'name' : 'Aerodynamic Helmet',
      'price': '₹ 2,799',
      'discount': '₹ 3,499',
      'percentage': '20% Off',
      'icon': 'assets/images/star.png',
      'rating': '4.5(154)',
    },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  MyColors.white,
      appBar: AppBar(
        title: const Padding(padding: EdgeInsets.only(left: .0000000000000000000000001
        ),
          child: CustomText(text: "Home", color: MyColors.white,)
        ),
        toolbarHeight: 44,
        titleSpacing: 0,
        centerTitle: false,
        leading: const Icon(Icons.menu,color: MyColors.white),
        backgroundColor: MyColors.purple,
        actions: [
          IconButton(onPressed: (){},icon:Icon (Icons.search), color: MyColors.white,),
          Stack(children: [
            IconButton(onPressed: (){},icon:Icon (Icons.shopping_cart_outlined),color: MyColors.white,),
           const Positioned(
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
        ],//action


      ),
     body:  Padding(
       padding: const EdgeInsets.all(10.0),
       child: SingleChildScrollView(
         scrollDirection: Axis.vertical,
         child: Column(
           children: [
            const SizedBox(height: 10,),
             const Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               CustomText(text: 'Nearby Users'),
               InkWell(
                 child:  Row(
                   children: [
                     CustomText(text: 'View all',color: MyColors.purple,fontSize: 14,fontWeight: FontWeight.w400,),
                     Icon(Icons.arrow_forward_ios,color: MyColors.purple,)
                   ],
                 ),
               ),

             ],
             ),
             const  SizedBox(height: 15,),
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: const Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   SizedBox(width: 5,),
                   Column(
                     children: [
                       CircleAvatar(
                         radius: 27,
                        backgroundImage: AssetImage('assets/images/11.png'),
                       ),
                      CustomText(text: 'Ankita', fontSize: 13,fontWeight: FontWeight.w400,color: MyColors.lightBlack,),

                     ],
                   ),
                   SizedBox(width: 5,),
                   Column(
                     children: [
                       CircleAvatar(
                         radius: 27,
                         backgroundImage: AssetImage('assets/images/12.png'),
                       ),
                       CustomText(text: 'Pankaj', fontSize: 13,fontWeight: FontWeight.w400,color: MyColors.lightBlack,),

                     ],
                   ),
                   SizedBox(width: 5,),
                   Column(
                     children: [
                       CircleAvatar(
                         radius: 27,
                         backgroundImage: AssetImage('assets/images/13.png'),
                       ),
                       CustomText(text: 'Manish', fontSize: 13,fontWeight: FontWeight.w400,color: MyColors.lightBlack,),

                     ],
                   ),
                   SizedBox(width: 5,),
                   Column(
                     children: [
                       CircleAvatar(
                         radius: 27,
                         backgroundImage: AssetImage('assets/images/14.png'),
                       ),
                       CustomText(text: 'Suresh', fontSize: 13,fontWeight: FontWeight.w400,color: MyColors.lightBlack,),

                     ],
                   ),
                   SizedBox(width: 5,),
                   Column(
                     children: [
                       CircleAvatar(
                         radius: 27,
                         backgroundImage: AssetImage('assets/images/15.png'),
                       ),
                       CustomText(text: 'Ankur', fontSize: 13,fontWeight: FontWeight.w400,color: MyColors.lightBlack,),

                     ],
                   ),
                   SizedBox(width: 5,),
                   Column(
                     children: [
                       CircleAvatar(
                         radius: 27,
                         backgroundImage: AssetImage('assets/images/12.png'),
                       ),
                       CustomText(text: 'Deepesh', fontSize: 13,fontWeight: FontWeight.w400,color: MyColors.lightBlack,),

                     ],
                   )
                 ],
               ),
             ),
             SizedBox(height: 10,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(child: CustomText(text: 'Deals of the Day')),
                 InkWell(
                   child: Row(
                     children: [
                       CustomText(text: 'View all',color: MyColors.purple,fontSize: 14,fontWeight: FontWeight.w400,),
                       const Icon(Icons.arrow_forward_ios,color: MyColors.purple,)
                     ],
                   ),
                 ),

               ],
             ),
             SizedBox(height: 10),
             Container(
               height: 196,
               child: GridView.builder(
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 2,
                   crossAxisSpacing: 5,
                   mainAxisSpacing: 5,),
                 itemCount: 2,
                 shrinkWrap: true,
                 primary: false,
                 itemBuilder: (context , index) {
                   return Container(
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15)
                     ),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Container(
                           height: 110,
                           width: 173,
                           decoration: BoxDecoration(
                             border: Border.all(
                               color: Color(0xffDDDDDD),
                                   width: 1
                             ),
                               borderRadius: BorderRadius.circular(4),
                               image: DecorationImage(image: AssetImage(deals[index] ['image']?? 'No'), fit: BoxFit.cover)
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 1,top: 5),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               CustomText(text: deals[index] ['name']?? 'No',
                                 fontSize: 14,fontWeight: FontWeight.w500,color: MyColors.lightBlack,),
                               SizedBox(height: 5,),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Expanded(child: Text(deals[index] ['price']?? 'No',
                                     style: GoogleFonts.inter(
                                       fontSize: 16, fontWeight: FontWeight.w600,
                                       color: MyColors.black,
                                     ),
                                     overflow: TextOverflow.ellipsis,
                                   ),),
                                   Expanded(
                                     child: Text(deals[index] ['discount']?? 'No',
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
                                     child: Text(deals[index] ['percentage']?? 'No',
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
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Icon(Icons.star_border,color: Color(0xffFFA000),size: 19,),
                                   /*Container(
                                     height: 15,
                                     width: 15,
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(3),
                                         image: DecorationImage(image: AssetImage(deals[index] ['icon']?? 'No'), fit: BoxFit.cover)
                                     ),
                                   ),*/
                                   Text(deals[index] ['rating']?? 'No',
                                     style: GoogleFonts.inter(
                                       fontSize: 12, fontWeight: FontWeight.w400,
                                       color: MyColors.lightBlack,
                                     ),
                                     overflow: TextOverflow.ellipsis,
                                     textAlign: TextAlign.start,
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
             ),
             SizedBox(height: 10,),
             Column(
               children: [
                 SizedBox(height: 10,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     CustomText(text: 'Upcoming Events'),
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
                   scrollDirection: Axis.horizontal,
                   child: Row(
                     children: [
                       SizedBox(
                         child: Column(
                           children: [
                             Container(
                               height:90.78,
                               width: 144.46,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(3)
                               ),
                               child:
                               Stack(
                                 children: [
                                   Image.asset('assets/images/24.png', fit: BoxFit.cover,),
                                   Positioned(
                                     bottom: 15, left: 10,
                                     child:
                                     Container(
                                         height: 28,
                                         width: 28,
                                         decoration: BoxDecoration(
                                             color: MyColors.purple,
                                             shape: BoxShape.circle,
                                             border: Border.all( color: MyColors.white,width: 2)
                                         ),
                                         child: CircleAvatar(
                                           radius: 25,
                                           backgroundImage: AssetImage('assets/images/31.png'),
                                         ),

                                     ),
                                   ),
                                   Positioned(
                                     bottom: 15, left: 22,
                                     child:
                                     Container(
                                       height: 28,
                                       width: 28,
                                       decoration: BoxDecoration(
                                           color: MyColors.purple,
                                           shape: BoxShape.circle,
                                           border: Border.all( color: MyColors.white,width: 2)
                                       ),
                                       child: CircleAvatar(
                                         radius: 25,
                                         backgroundImage: AssetImage('assets/images/30.png'),
                                       ),

                                     ),
                                   ),
                                   Positioned(
                                     bottom: 15, left: 35,
                                     child:
                                     Container(
                                       height: 28,
                                       width: 28,
                                       decoration: BoxDecoration(
                                           color: MyColors.purple,
                                           shape: BoxShape.circle,
                                           border: Border.all( color: MyColors.white,width: 2)
                                       ),
                                       child: CircleAvatar(
                                         radius: 25,
                                         backgroundImage: AssetImage('assets/images/29.png'),
                                       ),

                                     ),
                                   ),
                                   Positioned(
                                     bottom: 15, left: 50,
                                     child:
                                     Container(
                                         height: 28,
                                         width: 28,
                                         decoration: BoxDecoration(
                                             color: MyColors.purple,
                                             shape: BoxShape.circle,
                                             border: Border.all( color: MyColors.white,width: 2)
                                         ),
                                         child:CustomText(text: '+12', color: MyColors.white,fontSize: 12,)

                                     ),
                                   ),

                                 ],
                               ),

                             ),
                             CustomText(text: 'Shimla to Manali', fontWeight: FontWeight.w500,fontSize: 14,color: MyColors.lightBlack,)
                           ],
                         ),
                       ),
                       SizedBox(width: 10,),
                       SizedBox(
                         child: Column(
                           children: [
                             Container(
                               height:90.78,
                               width: 144.46,
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(3)
                               ),
                               child:  Stack(
                                 children: [
                                   Image.asset('assets/images/25.png', fit: BoxFit.cover,),
                                   Positioned(
                                     bottom: 15, left: 10,
                                     child:
                                     Container(
                                       height: 28,
                                       width: 28,
                                       decoration: BoxDecoration(
                                           color: MyColors.purple,
                                           shape: BoxShape.circle,
                                           border: Border.all( color: MyColors.white,width: 2)
                                       ),
                                       child: CircleAvatar(
                                         radius: 25,
                                         backgroundImage: AssetImage('assets/images/31.png'),
                                       ),

                                     ),
                                   ),
                                   Positioned(
                                     bottom: 15, left: 22,
                                     child:
                                     Container(
                                       height: 28,
                                       width: 28,
                                       decoration: BoxDecoration(
                                           color: MyColors.purple,
                                           shape: BoxShape.circle,
                                           border: Border.all( color: MyColors.white,width: 2)
                                       ),
                                       child: CircleAvatar(
                                         radius: 25,
                                         backgroundImage: AssetImage('assets/images/30.png'),
                                       ),

                                     ),
                                   ),
                                   Positioned(
                                     bottom: 15, left: 35,
                                     child:
                                     Container(
                                       height: 28,
                                       width: 28,
                                       decoration: BoxDecoration(
                                           color: MyColors.purple,
                                           shape: BoxShape.circle,
                                           border: Border.all( color: MyColors.white,width: 2)
                                       ),
                                       child: CircleAvatar(
                                         radius: 25,
                                         backgroundImage: AssetImage('assets/images/29.png'),
                                       ),

                                     ),
                                   ),
                                   Positioned(
                                     bottom: 15, left: 50,
                                     child:
                                     Container(
                                         height: 28,
                                         width: 28,
                                         decoration: BoxDecoration(
                                             color: MyColors.purple,
                                             shape: BoxShape.circle,
                                             border: Border.all( color: MyColors.white,width: 2)
                                         ),
                                         child:CustomText(text: '+20', color: MyColors.white,fontSize: 12,)

                                     ),
                                   ),

                                 ],
                               ),

                             ),
                             CustomText(text: 'Goa to Gujarat', fontWeight: FontWeight.w500,fontSize: 14,color: MyColors.lightBlack,)
                           ],
                         ),
                       ),
                       SizedBox(width: 10,),
                       SizedBox(
                         child: Column(
                           children: [
                             Container(
                               height:90.78,
                               width: 144.46,
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(3)
                               ),
                               child:  Stack(
                                 children: [
                                   Image.asset('assets/images/26.png', fit: BoxFit.cover,),
                                   Positioned(
                                     bottom: 15, left: 10,
                                     child:
                                     Container(
                                       height: 28,
                                       width: 28,
                                       decoration: BoxDecoration(
                                           color: MyColors.purple,
                                           shape: BoxShape.circle,
                                           border: Border.all( color: MyColors.white,width: 2)
                                       ),
                                       child: CircleAvatar(
                                         radius: 25,
                                         backgroundImage: AssetImage('assets/images/31.png'),
                                       ),

                                     ),
                                   ),
                                   Positioned(
                                     bottom: 15, left: 22,
                                     child:
                                     Container(
                                       height: 28,
                                       width: 28,
                                       decoration: BoxDecoration(
                                           color: MyColors.purple,
                                           shape: BoxShape.circle,
                                           border: Border.all( color: MyColors.white,width: 2)
                                       ),
                                       child: CircleAvatar(
                                         radius: 25,
                                         backgroundImage: AssetImage('assets/images/30.png'),
                                       ),

                                     ),
                                   ),
                                   Positioned(
                                     bottom: 15, left: 35,
                                     child:
                                     Container(
                                       height: 28,
                                       width: 28,
                                       decoration: BoxDecoration(
                                           color: MyColors.purple,
                                           shape: BoxShape.circle,
                                           border: Border.all( color: MyColors.white,width: 2)
                                       ),
                                       child: CircleAvatar(
                                         radius: 25,
                                         backgroundImage: AssetImage('assets/images/29.png'),
                                       ),

                                     ),
                                   ),
                                   Positioned(
                                     bottom: 15, left: 50,
                                     child:
                                     Container(
                                         height: 28,
                                         width: 28,
                                         decoration: BoxDecoration(
                                             color: MyColors.purple,
                                             shape: BoxShape.circle,
                                             border: Border.all( color: MyColors.white,width: 2)
                                         ),
                                         child:CustomText(text: '+6', color: MyColors.white,fontSize: 12,)

                                     ),
                                   ),

                                 ],
                               ),

                             ),
                             CustomText(text: 'Kashmir Trip', fontWeight: FontWeight.w500,fontSize: 14,color: MyColors.lightBlack,)
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
                 SizedBox(height: 10,),
                 GridView.builder(
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
           ],
         ),
       ),
     ),
    );
  }
}
