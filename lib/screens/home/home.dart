import 'package:flutter/material.dart';

import 'mostPopular.dart';
import 'travelvlog.dart';

class travelHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.menu),color: Colors.black,),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          Padding(
            padding: const EdgeInsets.only(left: 20 ),
            child: Text("Travel Blog",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
          ),

          Expanded(
              flex: 2,
              child: buildTravelBlog()),

          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween ,
              children: [
                Text("Most Popular",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Text("View All",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.w600),),
              ],
            ),
          ),

          Expanded(
              flex: 1,
              child: mostPopularPage()),


        ],
      ),
    );
  }
}
