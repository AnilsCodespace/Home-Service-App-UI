import 'package:flutter/material.dart';
class Portfolio extends StatefulWidget {


  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(
     backgroundColor: Color(0xFF121E2A),
     automaticallyImplyLeading: false,
     leading:
     Icon(
       Icons.arrow_back_rounded,
       color: Colors.white,
       size: 30,
     ),


     title: Text(
       'Create Profile',
       style: TextStyle(
         fontFamily: 'Poppins',
         color: Colors.white,
         fontSize: 22,
       ),
     ),
     actions: [],
     centerTitle: false,
     elevation: 2,
   ),
   body: SafeArea(child: Container(
     width: MediaQuery.of(context).size.width,
     height: MediaQuery.of(context).size.height,
     decoration: BoxDecoration(
       color: Color(0xFF121E2A)
     ),
     child: Column(
       mainAxisSize: MainAxisSize.max,
       children: [SizedBox(height: 10 ),
         Row(
           children: [
             Padding(
               padding: const EdgeInsets.only(left: 30,top: 20),
               child: Text("Portfolio",style: TextStyle(color: Colors.white,fontSize: 17),

               ),
             ),
           ],
         ),
       Row(
         children: [
           Padding(
             padding:   EdgeInsets.only(left: 30),
             child: Text("Attach images for completed jobs",style: TextStyle(color: Colors.white),),
           ),
         ],
       ),
         SizedBox(height: 15,),
         GridView.count(
shrinkWrap: true,

           crossAxisSpacing: 1,
           mainAxisSpacing: 1,
           crossAxisCount: 3,
           children: <Widget>[
             Container(

               
               child: Image.asset("asset/img_1.png"),
             ),
           ],
         )],
     ),


   )),
 );
  }
}
