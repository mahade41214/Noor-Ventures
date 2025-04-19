import 'package:flutter/material.dart';
import 'package:noorventures/pages/thank_you.dart';
import 'package:noorventures/widget/widget_support.dart';


class Angelica1lac extends StatefulWidget {
  const Angelica1lac({super.key});

  @override
  State<Angelica1lac> createState() => _Angelica1lacState();
}

class _Angelica1lacState extends State<Angelica1lac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdf9a0f),
      body: Container(
        margin: EdgeInsets.only(
            top: 70.0,
        ),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios_new_rounded,
                      color: Colors.black, size: 30.0
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Image.asset("images/angp.jpg",
                  height: 200, width: 450,
                  fit: BoxFit.cover
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Angelica’s Colors",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20.0),
                  height: 40,
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.black, borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("About Us", style: AppWidget.whiteTextFieldStyle())
                    ],
                  ),

                ),

              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Discover trendy, high-quality fashion at Angelica’s Colors. From elegant outfits to stylish accessories, we bring you the latest in women’sfashion with seamless online shopping Angelica’s Colors offers chic,stylish women’s fashion. Shop online for high-quality outfits and accessories designed to keep you ahead in fashion",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 70.0),

            Center(
              child: Container(

                height: 40,
                width: MediaQuery.of(context).size.width/2.5,
                decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Text("Learn more..", style: AppWidget.bluegreyTextFieldStyle()),
                    Icon(Icons.more_outlined, color: Colors.green, size: 30.0,),
                  ],
                ),

              ),
            ),

            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(
                margin: EdgeInsets.only(bottom: 50.0),
                padding: EdgeInsets.only(left: 20.0, right: 10.0, top: 20.0, bottom: 20.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.black, borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Total Investment",
                          style: AppWidget.whiteTextFieldStyle(),
                        ),
                        Text(
                          "1,00,000 BDT",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ThankYou()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Container(
                          height: 50,
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                          width: 160,
                          decoration: BoxDecoration(
                              color: Color(0xffdf9a0f), borderRadius: BorderRadius.circular(20)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                  "BOOK NOW",
                                  style: AppWidget.whiteTextFieldStyle()
                              ),
                              Icon(Icons.call_missed_outgoing,
                                color: Colors.green, size: 30.0,),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),

              ),
            ),


          ],),

      ),
    );
  }
}//4.58
