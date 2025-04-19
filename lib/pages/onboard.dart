import 'package:flutter/material.dart';
import 'package:noorventures/pages/content_model.dart';
import 'package:noorventures/pages/signup.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {

  int currentIndex=0;
  late PageController _controller;

  @override
  void initState() {
    _controller= PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdf9a0f),
      body: Column(children: [
        Expanded(
          child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index){
                setState(() {
                  currentIndex= index;
                });
              },
              itemBuilder: (_,i){
            return Padding(
              padding: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
              child: Column(children: [
                Image.asset(
                    contents[i].image,
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill
                ),
                SizedBox(
                  height: 60.0,),
                  Text(contents[i].title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold, ),),
                SizedBox(
                  height: 50.0,),
                Text(contents[i].description,
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500 ),),
          
              ],),
            );
          }),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(contents.length, (index) =>
              buildDot(index, context),
          ),
        ),
        ),
      GestureDetector(
        onTap: (){
          if(currentIndex==contents.length-1){
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context)=> SignUp()));
          }
          _controller.nextPage(
              duration: Duration(milliseconds: 100),
              curve: Curves.bounceIn);
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey, borderRadius: BorderRadius.circular(20.0)
          ),
          height: 60,
          width: double.infinity,
          margin: EdgeInsets.all(40),
          child: Center(
            child: Text(
              currentIndex == contents.length-1?"Start":'Next',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold ),),
          ),
        ),
      )
        ],
    ),
    );
  }
  Container buildDot(int index, BuildContext context){
    return Container(
      height: 10.0,
      width: currentIndex ==index?18:7,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: Colors.blueGrey),
    );
  }// 1.53
}
