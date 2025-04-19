import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:noorventures/pages/bottomnav.dart';
import 'package:noorventures/pages/forgotpass.dart';
import 'package:noorventures/pages/home.dart';
import 'package:noorventures/pages/signup.dart';
import 'package:noorventures/widget/widget_support.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  Future<void> _login() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      try {
        await _auth.signInWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );
        // Navigate to home or dashboard page
        Navigator.pushReplacementNamed(context, '/home');
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.toString())),
        );
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.black, Colors.white])),
                ),
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/2.0),
                  height: MediaQuery.of(context).size.height/2.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xffdf9a0f),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Text(''),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0,left: 20.0, right: 20.0),
                  child: Column(
                    children: [
                      Center(
                        child: Image.asset(
                          'images/logonoorventure.png',
                          width: MediaQuery.of(context).size.width/1.5,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Material(
                        borderRadius: BorderRadius.circular(20.0),
                        elevation: 10.0,
                        child: Container(
                          padding: EdgeInsets.only(top: 20.0,left: 20.0, right: 20.0),
                          width: MediaQuery.of(context).size.width/1.2,
                          height: MediaQuery.of(context).size.height/2.5,
                          decoration: BoxDecoration(
                              color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextFormField(
                                  controller: _emailController,
                                  decoration: InputDecoration(labelText: 'Email',),
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your email';
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(height: 10),
                                TextFormField(
                                  controller: _passwordController,
                                  decoration: InputDecoration(labelText: 'Password'),
                                  obscureText: true,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your password';
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(height: 50),
                                _isLoading
                                    ? CircularProgressIndicator()
                                    : ElevatedButton(
                                  onPressed: _login,
                                  child: Text("LogIn", style: AppWidget.bluegreyTextFieldStyle(),),
                                ),
                                SizedBox(height: 20.0,),
                                TextButton(
                                  onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Forgotpass()),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 120.0),
                                    child: Text("Forgot Password?", style: AppWidget.roiTextFieldStyle(),),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70.0),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                        },
                        child: Text(
                          "Don't have an account? Sign Up",
                          style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold,
                        ),)
                      ),
                      /*SizedBox(height: 20.0),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNav()));
                        },
                        child: Text(
                          "Skip? Go to Home!",
                          style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                      ),*/
                    ],
                  ),
                )
              ],
            ),
          ),
      ),
    );
  }
}

