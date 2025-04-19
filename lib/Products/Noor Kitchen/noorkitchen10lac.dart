import 'package:flutter/material.dart';
import 'package:noorventures/pages/thank_you.dart';
import 'package:noorventures/widget/widget_support.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Noorkitchen10lac extends StatefulWidget {
  const Noorkitchen10lac({super.key});

  @override
  State<Noorkitchen10lac> createState() => _Noorkitchen10lacState();
}

class _Noorkitchen10lacState extends State<Noorkitchen10lac> {
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
            Image.asset("images/noorkitchenp.jpg",
                height: 320, width: 420,
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
                    "Noor’s Kitchen",
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
              height: 30.0,
            ),
            Text(
              "A leading name in catering services in Dhaka, Noor’s Kitchen specializes in fresh, hygienic meals. From daily office lunches to corporate events and buffet catering, we deliver quality food with exceptional service.",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(bottom: 80.0),
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


