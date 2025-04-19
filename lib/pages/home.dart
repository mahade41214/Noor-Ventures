import 'package:flutter/material.dart';
import 'package:noorventures/Products/Angelica/angelica10lac.dart';
import 'package:noorventures/Products/Angelica/angelica1lac.dart';
import 'package:noorventures/Products/Kaphia/kapia10lac.dart';
import 'package:noorventures/Products/Kaphia/kapia1lac.dart';
import 'package:noorventures/Products/Noor%20Agro/agro10lac.dart';
import 'package:noorventures/Products/Noor%20Agro/agro1lac.dart';
import 'package:noorventures/Products/Noor%20Kitchen/noorkitchen10lac.dart';
import 'package:noorventures/Products/Noor%20Kitchen/noorkitchen1lac.dart';
import 'package:noorventures/Products/Noor%20Properties/noorproperties10lac.dart';
import 'package:noorventures/Products/Noor%20Properties/noorproperties1lac.dart';
import 'package:noorventures/Products/Planer%20Event%20Mng/planereventmng10lac.dart';
import 'package:noorventures/Products/Planer%20Event%20Mng/planereventmng1lac.dart';
import 'package:noorventures/widget/widget_support.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdf9a0f),
      body:SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 70.0, left: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Wellcome to NoorVenture", style: AppWidget.HeaderTextFieldStyle(),),
                  /* Container(
                      margin: EdgeInsets.only(right: 20.0),
                      padding: EdgeInsets.all(3),
                      decoration:BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(25)),
                      child: Icon(Icons.local_grocery_store_outlined, color: Colors.white, size: 30.0,
                      ),
                    )*/
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("Direct Business Investments!", style:
              TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold)),
              Text("Funding opportunities, track business growth and collaborate on new projects!",
                  style:
                  TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w500)
              ),
              SizedBox(
                height: 50.0,
              ),
              Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  height: 45.0,
                  width: 250,
                  padding: EdgeInsets.only(left: 35.0),
                  decoration: BoxDecoration(
                      color:Colors.black,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Short Term Projects", style: TextStyle(
                          fontSize: 20.0, color: Colors.white,
                          fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [


                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Kapia1lac()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/logokaphia.png",
                                    height: 90,
                                    width: 120,
                                    fit: BoxFit.cover
                                ),
                                Text("Bdt. 1,00,000",
                                  style: AppWidget.bluegreyTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Return 4%",
                                  style: AppWidget.roiTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Term - Short (01 - 02 Months)",
                                  style: AppWidget.lightTextFieldStyle(),)
                              ],),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Agro1lac()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/logoagro.png",
                                    height: 90,
                                    width: 120,
                                    fit: BoxFit.cover
                                ),
                                Text("Bdt. 1,00,000",
                                  style: AppWidget.bluegreyTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Return 7%",
                                  style: AppWidget.roiTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Term - Short (01 - 02 Months)",
                                  style: AppWidget.lightTextFieldStyle(),)
                              ],),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Angelica1lac()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/logoang.png",
                                    height: 90,
                                    width: 120,
                                    fit: BoxFit.cover
                                ),
                                Text("Bdt. 1,00,000",
                                  style: AppWidget.bluegreyTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Return 4%",
                                  style: AppWidget.roiTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Term - Short (01 - 02 Months)",
                                  style: AppWidget.lightTextFieldStyle(),)
                              ],),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 20.0,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Noorkitchen1lac()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/logonoorkitchen.png",
                                    height: 90,
                                    width: 120,
                                    fit: BoxFit.cover
                                ),
                                Text("Bdt. 1,00,000",
                                  style: AppWidget.bluegreyTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Return 4%",
                                  style: AppWidget.roiTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Term - Short (01 - 02 Months)",
                                  style: AppWidget.lightTextFieldStyle(),)
                              ],),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Planereventmng1lac()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/logoevent.png",
                                    height: 90,
                                    width: 120,
                                    fit: BoxFit.cover
                                ),
                                Text("Bdt. 1,00,000",
                                  style: AppWidget.bluegreyTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Return 4%",
                                  style: AppWidget.roiTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Term - Short (01 - 02 Months)",
                                  style: AppWidget.lightTextFieldStyle(),)
                              ],),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Noorproperties1lac()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/logonoorproperties.png",
                                    height: 90,
                                    width: 120,
                                    fit: BoxFit.cover
                                ),
                                Text("Bdt. 1,00,000",
                                  style: AppWidget.bluegreyTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Return 4%",
                                  style: AppWidget.roiTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Term - Short (01 - 02 Months)",
                                  style: AppWidget.lightTextFieldStyle(),)
                              ],),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Agro10lac()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/logoagro.png",
                                    height: 90,
                                    width: 120,
                                    fit: BoxFit.cover
                                ),
                                Text("Bdt. 10,00,000",
                                  style: AppWidget.bluegreyTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Return 7%",
                                  style: AppWidget.roiTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Term - Short (01 - 02 Months)",
                                  style: AppWidget.lightTextFieldStyle(),)
                              ],),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Angelica10lac()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/logoang.png",
                                    height: 90,
                                    width: 120,
                                    fit: BoxFit.cover
                                ),
                                Text("Bdt. 10,00,000",
                                  style: AppWidget.bluegreyTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Return 4%",
                                  style: AppWidget.roiTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Term - Short (01 - 02 Months)",
                                  style: AppWidget.lightTextFieldStyle(),)
                              ],),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 20.0,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Noorkitchen10lac()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/logonoorkitchen.png",
                                    height: 90,
                                    width: 120,
                                    fit: BoxFit.cover
                                ),
                                Text("Bdt. 10,00,000",
                                  style: AppWidget.bluegreyTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Return 4%",
                                  style: AppWidget.roiTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Term - Short (01 - 02 Months)",
                                  style: AppWidget.lightTextFieldStyle(),)
                              ],),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Noorproperties10lac()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/logonoorproperties.png",
                                    height: 90,
                                    width: 120,
                                    fit: BoxFit.cover
                                ),
                                Text("Bdt. 10,00,000",
                                  style: AppWidget.bluegreyTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Return 4%",
                                  style: AppWidget.roiTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Term - Short (01 - 02 Months)",
                                  style: AppWidget.lightTextFieldStyle(),)
                              ],),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Planereventmng10lac()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/logoevent.png",
                                    height: 90,
                                    width: 120,
                                    fit: BoxFit.cover
                                ),
                                Text("Bdt. 10,00,000",
                                  style: AppWidget.bluegreyTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Return 4%",
                                  style: AppWidget.roiTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Term - Short (01 - 02 Months)",
                                  style: AppWidget.lightTextFieldStyle(),)
                              ],),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Kapia10lac()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/logokaphia.png",
                                    height: 90,
                                    width: 120,
                                    fit: BoxFit.cover
                                ),
                                Text("Bdt. 10,00,000",
                                  style: AppWidget.bluegreyTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Return 4%",
                                  style: AppWidget.roiTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Term - Short (01 - 02 Months)",
                                  style: AppWidget.lightTextFieldStyle(),)
                              ],),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 50.0),
              Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  height: 45.0,
                  width: 250,
                  padding: EdgeInsets.only(left: 35.0),
                  decoration: BoxDecoration(
                      color:Colors.black,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Mid Term Projects", style: TextStyle(
                          fontSize: 20.0, color: Colors.white,
                          fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Agro1lac()));
                },
                child: Container(
                  margin: EdgeInsets.only(right: 28.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                              "images/logoagro.png",
                              height: 60,
                              width: 100,
                              fit: BoxFit.cover
                          ),
                          SizedBox(width: 20.0,),
                          Column(children: [
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Bdt. 1,00,000", style: AppWidget.bluegreyTextFieldStyle(),)),
                            SizedBox(height: 5.0,),
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Return 7%", style: AppWidget.lightTextFieldStyle(),)),
                            SizedBox(height: 5.0,),
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Term - Mid (03- 06 Months)", style: AppWidget.lightTextFieldStyle(),))
                          ],)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Angelica1lac()));
                },
                child: Container(
                  margin: EdgeInsets.only(right: 28.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                              "images/logoang.png",
                              height: 60,
                              width: 100,
                              fit: BoxFit.cover
                          ),
                          SizedBox(width: 20.0,),
                          Column(children: [
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Bdt. 1,00,000", style: AppWidget.bluegreyTextFieldStyle(),)),
                            SizedBox(height: 5.0,),
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Return 4.5%", style: AppWidget.lightTextFieldStyle(),)),
                            SizedBox(height: 5.0,),
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Term - Mid (03- 06 Months)", style: AppWidget.lightTextFieldStyle(),))
                          ],)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Planereventmng1lac()));
                },
                child: Container(
                  margin: EdgeInsets.only(right: 28.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                              "images/logoevent.png",
                              height: 60,
                              width: 100,
                              fit: BoxFit.cover
                          ),
                          SizedBox(width: 20.0,),
                          Column(children: [
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Bdt. 1,00,000", style: AppWidget.bluegreyTextFieldStyle(),)),
                            SizedBox(height: 5.0,),
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Return 4.5%", style: AppWidget.lightTextFieldStyle(),)),
                            SizedBox(height: 5.0,),
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Term - Mid (03- 06 Months)", style: AppWidget.lightTextFieldStyle(),))
                          ],)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Kapia1lac()));
                },
                child: Container(
                  margin: EdgeInsets.only(right: 28.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                              "images/logokaphia.png",
                              height: 60,
                              width: 100,
                              fit: BoxFit.cover
                          ),
                          SizedBox(width: 20.0,),
                          Column(children: [
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Bdt. 1,00,000", style: AppWidget.bluegreyTextFieldStyle(),)),
                            SizedBox(height: 5.0,),
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Return 4.5%", style: AppWidget.lightTextFieldStyle(),)),
                            SizedBox(height: 5.0,),
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Term - Mid (03- 06 Months)", style: AppWidget.lightTextFieldStyle(),))
                          ],)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Noorkitchen1lac()));
                },
                child: Container(
                  margin: EdgeInsets.only(right: 28.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                              "images/logonoorkitchen.png",
                              height: 60,
                              width: 100,
                              fit: BoxFit.cover
                          ),
                          SizedBox(width: 20.0,),
                          Column(children: [
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Bdt. 1,00,000", style: AppWidget.bluegreyTextFieldStyle(),)),
                            SizedBox(height: 5.0,),
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Return 4.5%", style: AppWidget.lightTextFieldStyle(),)),
                            SizedBox(height: 5.0,),
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Term - Mid (03- 06 Months)", style: AppWidget.lightTextFieldStyle(),))
                          ],)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Noorproperties1lac()));
                },
                child: Container(
                  margin: EdgeInsets.only(right: 28.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                              "images/logonoorproperties.png",
                              height: 60,
                              width: 100,
                              fit: BoxFit.cover
                          ),
                          SizedBox(width: 20.0,),
                          Column(children: [
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Bdt. 1,00,000", style: AppWidget.bluegreyTextFieldStyle(),)),
                            SizedBox(height: 5.0,),
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Return 4.5%", style: AppWidget.lightTextFieldStyle(),)),
                            SizedBox(height: 5.0,),
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Term - Mid (03- 06 Months)", style: AppWidget.lightTextFieldStyle(),))
                          ],)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Agro10lac()));
                },
                child: Container(
                  margin: EdgeInsets.only(right: 28.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                              "images/logoagro.png",
                              height: 60,
                              width: 100,
                              fit: BoxFit.cover
                          ),
                          SizedBox(width: 20.0,),
                          Column(children: [
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Bdt. 10,00,000", style: AppWidget.bluegreyTextFieldStyle(),)),
                            SizedBox(height: 5.0,),
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Return 7%", style: AppWidget.lightTextFieldStyle(),)),
                            SizedBox(height: 5.0,),
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Term - Mid (03- 06 Months)", style: AppWidget.lightTextFieldStyle(),))
                          ],)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Angelica10lac()));
                },
                child: Container(
                  margin: EdgeInsets.only(right: 28.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                              "images/logoang.png",
                              height: 60,
                              width: 100,
                              fit: BoxFit.cover
                          ),
                          SizedBox(width: 20.0,),
                          Column(children: [
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Bdt. 10,00,000", style: AppWidget.bluegreyTextFieldStyle(),)),
                            SizedBox(height: 5.0,),
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Return 4.5%", style: AppWidget.lightTextFieldStyle(),)),
                            SizedBox(height: 5.0,),
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Term - Mid (03- 06 Months)", style: AppWidget.lightTextFieldStyle(),))
                          ],)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Planereventmng10lac()));
                },
                child: Container(
                  margin: EdgeInsets.only(right: 28.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                              "images/logoevent.png",
                              height: 60,
                              width: 100,
                              fit: BoxFit.cover
                          ),
                          SizedBox(width: 20.0,),
                          Column(children: [
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Bdt. 10,00,000", style: AppWidget.bluegreyTextFieldStyle(),)),
                            SizedBox(height: 5.0,),
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Return 4.5%", style: AppWidget.lightTextFieldStyle(),)),
                            SizedBox(height: 5.0,),
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Term - Mid (03- 06 Months)", style: AppWidget.lightTextFieldStyle(),))
                          ],)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Kapia10lac()));
                },
                child: Container(
                  margin: EdgeInsets.only(right: 28.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                              "images/logokaphia.png",
                              height: 60,
                              width: 100,
                              fit: BoxFit.cover
                          ),
                          SizedBox(width: 20.0,),
                          Column(children: [
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Bdt. 10,00,000", style: AppWidget.bluegreyTextFieldStyle(),)),
                            SizedBox(height: 5.0,),
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Return 4.5%", style: AppWidget.lightTextFieldStyle(),)),
                            SizedBox(height: 5.0,),
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Term - Mid (03- 06 Months)", style: AppWidget.lightTextFieldStyle(),))
                          ],)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Noorkitchen10lac()));
                },
                child: Container(
                  margin: EdgeInsets.only(right: 28.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                              "images/logonoorkitchen.png",
                              height: 60,
                              width: 100,
                              fit: BoxFit.cover
                          ),
                          SizedBox(width: 20.0,),
                          Column(children: [
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Bdt. 10,00,000", style: AppWidget.bluegreyTextFieldStyle(),)),
                            SizedBox(height: 5.0,),
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Return 4.5%", style: AppWidget.lightTextFieldStyle(),)),
                            SizedBox(height: 5.0,),
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Term - Mid (03- 06 Months)", style: AppWidget.lightTextFieldStyle(),))
                          ],)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Noorproperties10lac()));
                },
                child: Container(
                  margin: EdgeInsets.only(right: 28.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                              "images/logonoorproperties.png",
                              height: 60,
                              width: 100,
                              fit: BoxFit.cover
                          ),
                          SizedBox(width: 20.0,),
                          Column(children: [
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Bdt. 10,00,000", style: AppWidget.bluegreyTextFieldStyle(),)),
                            SizedBox(height: 5.0,),
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Return 4.5%", style: AppWidget.lightTextFieldStyle(),)),
                            SizedBox(height: 5.0,),
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Term - Mid (03- 06 Months)", style: AppWidget.lightTextFieldStyle(),))
                          ],)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  height: 45.0,
                  width: 250,
                  padding: EdgeInsets.only(left: 35.0),
                  decoration: BoxDecoration(
                      color:Colors.black,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Long Term Projects", style: TextStyle(
                          fontSize: 20.0, color: Colors.white,
                          fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Kapia1lac()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/logokaphia.png",
                                    height: 90,
                                    width: 120,
                                    fit: BoxFit.cover
                                ),
                                Text("Bdt. 1,00,000",
                                  style: AppWidget.bluegreyTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Return 5%",
                                  style: AppWidget.roiTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Term - Long (01 Yrs - 05 Yrs)",
                                  style: AppWidget.lightTextFieldStyle(),)
                              ],),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Agro1lac()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/logoagro.png",
                                    height: 90,
                                    width: 120,
                                    fit: BoxFit.cover
                                ),
                                Text("Bdt. 1,00,000",
                                  style: AppWidget.bluegreyTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Return 7%",
                                  style: AppWidget.roiTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Term - Long (01 Yrs - 05 Yrs)",
                                  style: AppWidget.lightTextFieldStyle(),)
                              ],),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Angelica1lac()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/logoang.png",
                                    height: 90,
                                    width: 120,
                                    fit: BoxFit.cover
                                ),
                                Text("Bdt. 1,00,000",
                                  style: AppWidget.bluegreyTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Return 5%",
                                  style: AppWidget.roiTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Term - Long (01 Yrs - 05 Yrs)",
                                  style: AppWidget.lightTextFieldStyle(),)
                              ],),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 20.0,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Noorkitchen1lac()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/logonoorkitchen.png",
                                    height: 90,
                                    width: 120,
                                    fit: BoxFit.cover
                                ),
                                Text("Bdt. 1,00,000",
                                  style: AppWidget.bluegreyTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Return 5%",
                                  style: AppWidget.roiTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Term - Long (01 Yrs - 05 Yrs)",
                                  style: AppWidget.lightTextFieldStyle(),)
                              ],),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Planereventmng1lac()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/logoevent.png",
                                    height: 90,
                                    width: 120,
                                    fit: BoxFit.cover
                                ),
                                Text("Bdt. 1,00,000",
                                  style: AppWidget.bluegreyTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Return 5%",
                                  style: AppWidget.roiTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Term - Long (01 Yrs - 05 Yrs)",
                                  style: AppWidget.lightTextFieldStyle(),)
                              ],),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Noorproperties1lac()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/logonoorproperties.png",
                                    height: 90,
                                    width: 120,
                                    fit: BoxFit.cover
                                ),
                                Text("Bdt. 1,00,000",
                                  style: AppWidget.bluegreyTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Return 5%",
                                  style: AppWidget.roiTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Term - Long (01 Yrs - 05 Yrs)",
                                  style: AppWidget.lightTextFieldStyle(),)
                              ],),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Agro10lac()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/logoagro.png",
                                    height: 90,
                                    width: 120,
                                    fit: BoxFit.cover
                                ),
                                Text("Bdt. 10,00,000",
                                  style: AppWidget.bluegreyTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Return 7%",
                                  style: AppWidget.roiTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Term - Long (01 Yrs - 05 Yrs)",
                                  style: AppWidget.lightTextFieldStyle(),)
                              ],),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Angelica10lac()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/logoang.png",
                                    height: 90,
                                    width: 120,
                                    fit: BoxFit.cover
                                ),
                                Text("Bdt. 10,00,000",
                                  style: AppWidget.bluegreyTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Return 5%",
                                  style: AppWidget.roiTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Term - Long (01 Yrs - 05 Yrs)",
                                  style: AppWidget.lightTextFieldStyle(),)
                              ],),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 20.0,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Noorkitchen10lac()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/logonoorkitchen.png",
                                    height: 90,
                                    width: 120,
                                    fit: BoxFit.cover
                                ),
                                Text("Bdt. 10,00,000",
                                  style: AppWidget.bluegreyTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Return 5%",
                                  style: AppWidget.roiTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Term - Long (01 Yrs - 05 Yrs)",
                                  style: AppWidget.lightTextFieldStyle(),)
                              ],),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Noorproperties10lac()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/logonoorproperties.png",
                                    height: 90,
                                    width: 120,
                                    fit: BoxFit.cover
                                ),
                                Text("Bdt. 10,00,000",
                                  style: AppWidget.bluegreyTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Return 5%",
                                  style: AppWidget.roiTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Term - Long (01 Yrs - 05 Yrs)",
                                  style: AppWidget.lightTextFieldStyle(),)
                              ],),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Planereventmng10lac()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/logoevent.png",
                                    height: 90,
                                    width: 120,
                                    fit: BoxFit.cover
                                ),
                                Text("Bdt. 10,00,000",
                                  style: AppWidget.bluegreyTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Return 5%",
                                  style: AppWidget.roiTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Term - Long (01 Yrs - 05 Yrs)",
                                  style: AppWidget.lightTextFieldStyle(),)
                              ],),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Kapia10lac()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/logokaphia.png",
                                    height: 90,
                                    width: 120,
                                    fit: BoxFit.cover
                                ),
                                Text("Bdt. 10,00,000",
                                  style: AppWidget.bluegreyTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Return 5%",
                                  style: AppWidget.roiTextFieldStyle(),),
                                SizedBox(height: 5.0,),
                                Text("Term - Long (01 Yrs - 05 Yrs)",
                                  style: AppWidget.lightTextFieldStyle(),)
                              ],),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 50.0,),



            ],
          ),
        ),
      ),
    );
  }
}

