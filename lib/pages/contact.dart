import 'package:flutter/material.dart';
import 'package:noorventures/widget/widget_support.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Color(0xffdf9a0f),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
              top: 100.0, left: 20.0, right: 20.0
          ),
          child: Container(
            child: Column(
              children: [
                Image.asset("images/event.png",
                    height: 160, width: 300,
                    fit: BoxFit.cover
                ),
                SizedBox(
                  height: 80.0,
                ),
                Container(
                  height: 45.0,
                  width: 200,
                  padding: EdgeInsets.only(left: 35.0),

                  decoration: BoxDecoration(
                      color:Colors.black,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Contact Us", style: TextStyle(
                          fontSize: 25.0, color: Colors.white,
                          fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 100.0,),
                Container(
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Office Address:", style: AppWidget.bluegreyTextFieldStyle(),),
                    ],
                  ),),
                Container(
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.fmd_good_outlined, size: 25.0, color: Colors.green,),
                    SizedBox(width: 10.0,),
                    Expanded(
                      child: Text("House 1, Road 2, Sector 3, Jashimduddin jashimduddin avenue, Dhaka-1230",
                        style: AppWidget.whiteTextFieldStyle(),),
                    )
                  ],
                  
                ),),

                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.email_outlined, size: 25.0, color: Colors.green,),
                      SizedBox(width: 10.0,),
                      Expanded(
                        child: Text("noorventuresowner@gmail.com",
                          style: AppWidget.whiteTextFieldStyle(),),
                      )
                    ],

                  ),),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.phone_android_outlined, size: 25.0, color: Colors.green,),
                      SizedBox(width: 10.0,),
                      Expanded(
                        child: Text("+880 1799-662088",
                          style: AppWidget.whiteTextFieldStyle(),),
                      )
                    ],

                  ),),
                SizedBox(height: 50.0,),
                /*Container(
                  height: 45.0,
                  width: 200,
                  padding: EdgeInsets.only(left: 30.0),

                  decoration: BoxDecoration(
                      color:Colors.blueGrey,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.visibility, color: Colors.white,size: 30.0,),
                      SizedBox(width: 10.0,),
                      Text("Our Vision", style: TextStyle(
                          fontSize: 20.0, color: Colors.white,
                          fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),*/

              ],
            ),
          ),

        ),
      ),
    );
  }
}



