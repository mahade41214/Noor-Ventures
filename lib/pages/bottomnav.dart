import 'package:flutter/material.dart';
import 'package:noorventures/pages/about.dart';
import 'package:noorventures/pages/booking.dart';
import 'package:noorventures/pages/contact.dart';
import 'package:noorventures/pages/home.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:noorventures/pages/profile_screen.dart';

 
class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 0;
  late List<Widget> pages;

  late Widget currentPage;
  late Home home;
  late ProfileScreen profileScreen;
  late Contact contact;
  late About about;


  @override
  void initState() {
    home = Home();
    profileScreen = ProfileScreen();
    contact = Contact();
    about = About();
    pages = [home, about,contact,profileScreen];
    currentPage = Home();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 55,
          backgroundColor: Color(0xffdf9a0f),
          color: Colors.black,
          animationDuration: Duration(milliseconds: 500),
          onTap:(int index){
            setState(() {
              currentTabIndex=index;
            });
          },
          items: [
        Icon(
        Icons.home_outlined,
        color: Colors.white, size: 30.0),
        Icon(
          Icons.business_center,
          color: Colors.white, size: 30.0),
        Icon(
          Icons.contact_phone,
          color: Colors.white, size: 30.0),
        Icon(
          Icons.person,
          color: Colors.white, size: 30.0),
      ]),
      body: pages[currentTabIndex],
    );
  }
}


