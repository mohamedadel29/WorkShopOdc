import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:workshop/View/page/Finals.dart';
import 'package:workshop/View/page/events.dart';
import 'package:workshop/View/page/lectures.dart';
import 'package:workshop/View/page/midterms.dart';
import 'package:workshop/View/page/navbar.dart';
import 'package:workshop/View/page/notes.dart';
import 'package:workshop/View/page/sections.dart';
import 'package:workshop/viewmodel/bottomnavbar_cubit/buttom_nav_bar_cubit.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text(
                       "Orange",
                       style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepOrange,fontSize: 30),
                     ),
                     Text(
                       " Digital Centar",
                       style: TextStyle(
                           fontWeight: FontWeight.bold,
                           color: Colors.black,
                           fontSize: 30
                       ),
                     ),
                   ],
                 ),
                 Container(
                   child: Column(
                     children: [
                       Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Card(
                               elevation: 5,
                               semanticContainer: true,
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(10.0),
                               ),
                               child: InkWell(
                                 onTap: (){
                                   Navigator.push(context,MaterialPageRoute(builder: (context) => Lectures(),));
                                 },
                                 child: Container(
                                   height: 100,
                                   width: 150,
                                   margin: EdgeInsets.all(8.0),
                                   decoration: BoxDecoration(
                                     color: Colors.transparent,
                                     borderRadius: BorderRadius.circular(10),
                                   ),
                                   child: Stack(
                                     children: [
                                       Card(
                                         child: SvgPicture.asset('image/lecture.svg',width:50,fit: BoxFit.fill),
                                         margin: EdgeInsets.only(left: 50.0),
                                         semanticContainer: true,
                                         elevation: 0,
                                         shape: RoundedRectangleBorder(
                                           borderRadius: BorderRadius.circular(10.0),

                                         ),
                                       ),
                                       Container(
                                         height: 90,
                                         child: Row(
                                           crossAxisAlignment: CrossAxisAlignment.end,
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: [
                                             Text(
                                               'Lectures',
                                               style: TextStyle(
                                                 color: Colors.deepOrange,
                                                 fontWeight: FontWeight.bold,
                                                 fontSize: 25,
                                               ),
                                             ),
                                           ],
                                         ),
                                       ),

                                     ],
                                   ),

                                 ),
                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.all( 1.0),
                             child: Card(
                               elevation: 5,
                               semanticContainer: true,
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(10.0),
                               ),
                               child: InkWell(
                                 onTap: (){
                                   Navigator.push(context,MaterialPageRoute(builder: (context) => SectionsScreen(),));
                                 },
                                 child: Container(
                                   height: 100,
                                   width: 150,
                                   margin: EdgeInsets.all(7.0),
                                   decoration: BoxDecoration(
                                     color: Colors.transparent,
                                     borderRadius: BorderRadius.circular(10),
                                   ),
                                   child: Stack(
                                     children: [
                                       Card(
                                         child: SvgPicture.asset('image/sections.svg',width:50,fit: BoxFit.fill,color: Colors.deepOrange,),
                                         margin: EdgeInsets.only(left: 50.0),
                                         semanticContainer: true,
                                         elevation: 0,
                                         shape: RoundedRectangleBorder(
                                           borderRadius: BorderRadius.circular(10.0),


                                         ),
                                       ),
                                       Container(
                                         height: 90,
                                         child: Row(
                                           crossAxisAlignment: CrossAxisAlignment.end,
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: [
                                             Text(
                                               'Sections',
                                               style: TextStyle(
                                                 color: Colors.deepOrange,
                                                 fontWeight: FontWeight.bold,
                                                 fontSize: 25,
                                               ),
                                             ),
                                           ],
                                         ),
                                       ),

                                     ],
                                   ),

                                 ),
                               ),
                             ),
                           ),


                         ],
                       ),
                       Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Card(
                               elevation: 5,
                               semanticContainer: true,
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(10.0),
                               ),
                               child: InkWell(
                                 onTap: (){
                                   Navigator.push(context,MaterialPageRoute(builder: (context) => Midterms(),));
                                 },
                                 child: Container(
                                   height: 100,
                                   width: 150,
                                   margin: EdgeInsets.all(8.0),
                                   decoration: BoxDecoration(
                                     color: Colors.transparent,
                                     borderRadius: BorderRadius.circular(10),
                                   ),
                                   child: Stack(
                                     children: [
                                       Card(
                                         child: SvgPicture.asset('image/midterm.svg',width:50,fit: BoxFit.fill),
                                         margin: EdgeInsets.only(left: 50.0),
                                         semanticContainer: true,
                                         elevation: 0,
                                         shape: RoundedRectangleBorder(
                                           borderRadius: BorderRadius.circular(10.0),

                                         ),
                                       ),
                                       Container(
                                         height: 90,
                                         child: Row(
                                           crossAxisAlignment: CrossAxisAlignment.end,
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: [
                                             Text(
                                               'Midterms',
                                               style: TextStyle(
                                                 color: Colors.deepOrange,
                                                 fontWeight: FontWeight.bold,
                                                 fontSize: 25,
                                               ),
                                             ),
                                           ],
                                         ),
                                       ),

                                     ],
                                   ),

                                 ),
                               ),
                             ),
                           ),
                           SizedBox(width: 5,),
                           Padding(
                             padding: const EdgeInsets.all(6.0),
                             child: Card(
                               elevation: 5,
                               semanticContainer: true,
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(10.0),
                               ),
                               child: InkWell(
                                 onTap: (){
                                   Navigator.push(context,MaterialPageRoute(builder: (context) => Finals(),));
                                 },
                                 child: Container(
                                   height: 100,
                                   width: 150,
                                   margin: EdgeInsets.all(7.0),
                                   decoration: BoxDecoration(
                                     color: Colors.transparent,
                                     borderRadius: BorderRadius.circular(10),
                                   ),
                                   child: Stack(
                                     children: [
                                       Card(
                                         child: SvgPicture.asset('image/final.svg',width:50,fit: BoxFit.fill),
                                         margin: EdgeInsets.only(left: 50.0),
                                         semanticContainer: true,
                                         elevation: 0,
                                         shape: RoundedRectangleBorder(
                                           borderRadius: BorderRadius.circular(10.0),

                                         ),
                                       ),
                                       Container(
                                         height: 90,
                                         child: Row(
                                           crossAxisAlignment: CrossAxisAlignment.end,
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: [
                                             Text(
                                               'Finals',
                                               style: TextStyle(
                                                 color: Colors.deepOrange,
                                                 fontWeight: FontWeight.bold,
                                                 fontSize: 25,
                                               ),
                                             ),
                                           ],
                                         ),
                                       ),

                                     ],
                                   ),

                                 ),
                               ),
                             ),
                           ),


                         ],
                       ),
                       Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Card(
                               elevation: 5,
                               semanticContainer: true,
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(10.0),
                               ),
                               child: InkWell(
                                 onTap: (){
                                   Navigator.push(context,MaterialPageRoute(builder: (context) => Events(),));
                                 },
                                 child: Container(
                                   height: 100,
                                   width: 150,
                                   margin: EdgeInsets.all(8.0),
                                   decoration: BoxDecoration(
                                     color: Colors.transparent,
                                     borderRadius: BorderRadius.circular(10),
                                   ),
                                   child: Stack(
                                     children: [
                                       Card(
                                         child: SvgPicture.asset('image/event.svg',width:50,fit: BoxFit.fill),
                                         margin: EdgeInsets.only(left: 50.0),
                                         semanticContainer: true,
                                         elevation: 0,
                                         shape: RoundedRectangleBorder(
                                           borderRadius: BorderRadius.circular(10.0),

                                         ),
                                       ),
                                       Container(
                                         height: 90,
                                         child: Row(
                                           crossAxisAlignment: CrossAxisAlignment.end,
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: [
                                             Text(
                                               'Events',
                                               style: TextStyle(
                                                 color: Colors.deepOrange,
                                                 fontWeight: FontWeight.bold,
                                                 fontSize: 25,
                                               ),
                                             ),
                                           ],
                                         ),
                                       ),

                                     ],
                                   ),

                                 ),
                               ),
                             ),
                           ),
                           SizedBox(width: 5,),
                           Padding(
                             padding: const EdgeInsets.all(6.0),
                             child: Card(
                               elevation: 5,
                               semanticContainer: true,
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(10.0),
                               ),
                               child: InkWell(
                                 onTap: (){
                                   Navigator.push(context,MaterialPageRoute(builder: (context) => Notes(),));
                                 },
                                 child: Container(
                                   height: 100,
                                   width: 150,
                                   margin: EdgeInsets.all(7.0),
                                   decoration: BoxDecoration(
                                     color: Colors.transparent,
                                     borderRadius: BorderRadius.circular(10),
                                   ),
                                   child: Stack(
                                     children: [
                                       Card(
                                         child: SvgPicture.asset('image/notes.svg',width:50,fit: BoxFit.fill),
                                         margin: EdgeInsets.only(left: 50.0),
                                         semanticContainer: true,
                                         elevation: 0,
                                         shape: RoundedRectangleBorder(
                                           borderRadius: BorderRadius.circular(10.0),

                                         ),
                                       ),
                                       Container(
                                         height: 90,
                                         child: Row(
                                           crossAxisAlignment: CrossAxisAlignment.end,
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: [
                                             Text(
                                               'Notes',
                                               style: TextStyle(
                                                 color: Colors.deepOrange,
                                                 fontWeight: FontWeight.bold,
                                                 fontSize: 25,
                                               ),
                                             ),
                                           ],
                                         ),
                                       ),

                                     ],
                                   ),

                                 ),
                               ),
                             ),
                           ),


                         ],
                       ),


                     ],
                   ),
                 ),

               ],
            ),
          ),
        ),
      ) ,

    );

  }
}
