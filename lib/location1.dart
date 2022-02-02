import 'package:flutter/material.dart';
class Location1_screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text("Search for your location",style: TextStyle(
              fontSize: 20,
              color: Colors.black
            ),),
          ),
      SizedBox(height: 30,),

        ],


      ),



    );
  }
}
