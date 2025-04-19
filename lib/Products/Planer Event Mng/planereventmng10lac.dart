import 'package:flutter/material.dart';
import 'package:noorventures/pages/thank_you.dart';
import 'package:noorventures/widget/widget_support.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Planereventmng10lac extends StatefulWidget {
  const Planereventmng10lac({super.key});

  @override
  State<Planereventmng10lac> createState() => _Planereventmng10lacState();
}

class _Planereventmng10lacState extends State<Planereventmng10lac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdf9a0f),
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
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios_new_rounded,
                      color: Colors.black, size: 30.0
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            Image.asset("images/eventp.jpg",
                height: 270, width: 400,
                fit: BoxFit.cover
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    "Planners Glam Event",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  height: 40,
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.black, borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Learn more", style: AppWidget.whiteTextFieldStyle())
                    ],
                  ),

                ),

              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Planners Glam Event Ltd. crafts unforgettable events, from corporate functions to grand weddings. Expert planning, stunning décor, and seamless execution—all in one place. Turn your vision into reality with Planners Glam Event Ltd. From weddings to corporate events, we handle everything with expert planning and flawless execution.",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 10.0,),
            Spacer(),
            Container(
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
                        "10,00,000 BDT",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final user = FirebaseAuth.instance.currentUser;

                      if (user != null) {
                        final doc = await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
                        final data = doc.data();

                        final isProfileComplete = data != null &&
                            (data['name']?.toString().isNotEmpty ?? false) &&
                            (data['phone']?.toString().isNotEmpty ?? false) &&
                            (data['profession']?.toString().isNotEmpty ?? false) &&
                            (data['city']?.toString().isNotEmpty ?? false) &&
                            (data['street']?.toString().isNotEmpty ?? false) &&
                            (data['address']?.toString().isNotEmpty ?? false) &&
                            (data['profilePic']?.toString().isNotEmpty ?? false);

                        if (isProfileComplete) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ThankYou()),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Please complete your profile before booking."),
                            backgroundColor: Colors.red,
                          ));
                          Navigator.pushNamed(context, '/profile');
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("You must be logged in to book."),
                          backgroundColor: Colors.red,
                        ));
                      }
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.orange, minimumSize: Size(150, 48),),

                    child: Text("Book", style: TextStyle(color: Colors.white, fontSize: 20.0)),
                  ),

                ],
              ),

            ),


          ],),

      ),
    );
  }
}//4.58








