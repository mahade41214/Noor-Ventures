import 'package:flutter/material.dart';
import 'package:noorventures/pages/bottomnav.dart';
import 'package:noorventures/pages/home.dart';
import 'package:noorventures/widget/widget_support.dart';



class FinalConfirm extends StatefulWidget {
  const FinalConfirm({super.key});

  @override
  State<FinalConfirm> createState() => _FinalConfirmState();
}

class _FinalConfirmState extends State<FinalConfirm> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(
            top: 50.0, left: 20.0, right: 20.0
        ),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNav()));
                  },
                  child: Icon(Icons.arrow_back_ios_new_rounded,
                      color: Colors.white, size: 30.0
                  ),
                ),
              ],
            ),
            Image.asset("images/NoorVlogo.jpg",
                height: 160, width: 160,
                fit: BoxFit.cover
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    "Your Booking confirmation Successfully done. Someone in our Team Member will contact you within next 24 hours. For more inquiry please contact us Thank you.    ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),

              ],
            ),

            SizedBox(height: 80.0),
            Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height:40,
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                width: MediaQuery.of(context).size.width/1.5,
                decoration: BoxDecoration(
                    color: Colors.white10, borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.timeline_sharp, color: Colors.green, size: 30.0,),
                    Text("Guaranteed Return", style: AppWidget.roiTextFieldStyle()),
                  ],
                ),

              ),
            ),



            Spacer(),
            Container(
              margin: EdgeInsets.only(bottom: 180.0),
              padding: EdgeInsets.only(left: 20.0, right: 10.0, top: 20.0, bottom: 20.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xffdf9a0f), borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text("Contact us", style: AppWidget.bluegreyTextFieldStyle(),),
                      SizedBox(width: 20.0,),
                      Icon(Icons.call, color: Colors.green, size: 20,),
                      Text("+880 1799-662088", style: AppWidget.bluegreyTextFieldStyle(),),
                    ],
                  ),
                ],
              ),

            ),


          ],),

      ),
    );
  }
}