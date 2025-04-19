import 'package:flutter/material.dart';
import 'package:noorventures/pages/home.dart';
import 'package:noorventures/pages/final_confirm.dart';
import 'package:noorventures/widget/widget_support.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ThankYou extends StatefulWidget {
  const ThankYou({super.key});

  @override
  State<ThankYou> createState() => _ThankYouState();
}

class _ThankYouState extends State<ThankYou> {
  bool isLoading = false;

  Future<void> confirmBooking() async {
    setState(() => isLoading = true);

    try {
      final user = FirebaseAuth.instance.currentUser;
      if (user == null) throw 'User not logged in';

      final userDoc = await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
      final data = userDoc.data();

      if (data == null) throw 'No user data found';

      // Save booking confirmation WITHOUT image
      await FirebaseFirestore.instance.collection('bookingConfirmed').doc(user.uid).set({
        'name': data['name'],
        'phone': data['phone'],
        'profession': data['profession'],
        'city': data['city'],
        'street': data['street'],
        'address': data['address'],
        'uid': user.uid,
        'timestamp': FieldValue.serverTimestamp(),
      });

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => FinalConfirm()),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Booking failed: $e"),
        backgroundColor: Colors.red,
      ));
    } finally {
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => Home()),
                    );
                  },
                  child: Icon(Icons.arrow_back_ios_new_rounded,
                      color: Colors.white, size: 30.0),
                ),
              ],
            ),
            Image.asset("images/NoorVlogo.jpg",
                height: 160, width: 160, fit: BoxFit.cover),
            SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    "Thank you for your Booking Interest",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.0),
            Text(
              "Please Confirm your Booking with Noor Ventures Team",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 70),
            GestureDetector(
              onTap: () async {
                final user = FirebaseAuth.instance.currentUser;

                if (user != null) {
                  final profileDoc = await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
                  final profileData = profileDoc.data();

                  if (profileData != null) {
                    // Remove profilePic to avoid storage URL issues
                    profileData.remove('profilePic');

                    // Add timestamp
                    profileData['timestamp'] = FieldValue.serverTimestamp();

                    await FirebaseFirestore.instance
                        .collection('bookingConfirmed')
                        .doc(user.uid)
                        .set(profileData);

                    Navigator.pushNamed(context, '/finalConfirm'); // or use MaterialPageRoute
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Profile not found."),
                      backgroundColor: Colors.red,
                    ));
                  }
                }
              },
              child: Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: 300,
                decoration: BoxDecoration(
                    color: Color(0xffdf9a0f), borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text("Booking Confirm", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
