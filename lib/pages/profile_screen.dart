import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:noorventures/widget/widget_support.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameC = TextEditingController();
  final TextEditingController phoneC = TextEditingController();
  final TextEditingController addressC = TextEditingController();
  final TextEditingController professionC = TextEditingController();
  final TextEditingController cityC = TextEditingController();
  final TextEditingController streetC = TextEditingController();

  String? profilePic;
  bool isSaving = false;

  @override
  void initState() {
    super.initState();
    loadUserData();
  }

  Future<void> loadUserData() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      DocumentSnapshot<Map<String, dynamic>> snapshot =
      await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
      if (snapshot.exists) {
        setState(() {
          nameC.text = snapshot.data()?['name'] ?? '';
          phoneC.text = snapshot.data()?['phone'] ?? '';
          professionC.text = snapshot.data()?['profession'] ?? '';
          cityC.text = snapshot.data()?['city'] ?? '';
          streetC.text = snapshot.data()?['street'] ?? '';
          addressC.text = snapshot.data()?['address'] ?? '';
          profilePic = snapshot.data()?['profilePic'] ?? null;
        });
      }
    }
  }

  Future<void> pickImage() async {
    final XFile? pickedFile =
    await ImagePicker().pickImage(source: ImageSource.gallery, imageQuality: 50);
    if (pickedFile != null) {
      setState(() => profilePic = pickedFile.path);
    }
  }

  Future<String?> uploadImage(File file) async {
    try {
      final user = FirebaseAuth.instance.currentUser;
      if (user == null) throw Exception("User not logged in");

      final String fileName =
          'profile_${user.uid}_${DateTime.now().millisecondsSinceEpoch}.jpg';

      final Reference storageRef = FirebaseStorage.instance.ref().child('profile/$fileName');

      UploadTask uploadTask = storageRef.putFile(file);
      TaskSnapshot snapshot = await uploadTask;

      final String downloadUrl = await snapshot.ref.getDownloadURL();
      print("✅ Uploaded Image URL: $downloadUrl");

      return downloadUrl;
    } catch (e) {
      print("❌ Upload Failed: $e");
      return null;
    }
  }




  Future<void> saveProfile() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => isSaving = true);

    try {
      final user = FirebaseAuth.instance.currentUser;

      if (user == null) {
        print("❌ User is null. Not logged in.");
        throw Exception("User not logged in");
      }

      print("👤 User ID: ${user.uid}");
      print("📍 Starting profile save...");
      print("📷 Current profilePic: $profilePic");

      String? downloadUrl = profilePic;

      // Only upload if it's a local file path
      if (profilePic != null && !profilePic!.startsWith('http')) {
        print("⬆️ Uploading image to Firebase Storage...");
        final uploadedUrl = await uploadImage(File(profilePic!));
        if (uploadedUrl == null) {
          print("❌ Image upload returned null");
          throw Exception("Image upload failed");
        }
        print("✅ Uploaded Image URL: $uploadedUrl");
        downloadUrl = uploadedUrl;
      }

      final Map<String, dynamic> userData = {
        'name': nameC.text.trim(),
        'phone': phoneC.text.trim(),
        'profession': professionC.text.trim(),
        'city': cityC.text.trim(),
        'street': streetC.text.trim(),
        'address': addressC.text.trim(),
        'profilePic': downloadUrl,
      };

      print("📤 Writing userData to Firestore: $userData");

      await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .set(userData);

      await user.updateDisplayName(nameC.text.trim());

      print("✅ Profile saved successfully.");

      setState(() {
        profilePic = downloadUrl;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("✅ Profile saved successfully")),
      );
    } catch (e, stackTrace) {
      print("❌ Error saving profile: $e");
      print("📛 Stack Trace: $stackTrace");

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("❌ Failed to save profile")),
      );
    } finally {
      setState(() => isSaving = false);
    }
  }







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdf9a0f),
      appBar: AppBar(
          backgroundColor: Color(0xffdf9a0f),title: Center(
        child: Text("Profile",
          style: AppWidget.HeaderTextFieldStyle(

          ),),
      )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                GestureDetector(
                  onTap: pickImage,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: profilePic == null
                        ? AssetImage("images/iconphoto.png") as ImageProvider
                        : profilePic!.startsWith("http")
                        ? NetworkImage(profilePic!) // ✅ Firebase URL
                        : FileImage(File(profilePic!)), // local file
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(Icons.camera_alt, color: Colors.white70, size: 30),
                    ),
                  ),
                ),
        
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFormField(
                    controller: nameC,
                    decoration: InputDecoration(
                      labelText: "Full Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                    ),
                    validator: (value) => value!.isEmpty ? "Enter your name" : null,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFormField(
                    controller: phoneC,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                    ),
                    validator: (value) => value!.isEmpty ? "Enter your phone number" : null,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFormField(
                    controller: professionC,
                    decoration: InputDecoration(
                      labelText: "Profession",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                    ),
                    validator: (value) => value!.isEmpty ? "Enter your Profession" : null,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFormField(
                    controller: cityC,
                    decoration: InputDecoration(
                      labelText: "City",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                    ),
                    validator: (value) => value!.isEmpty ? "Enter your City" : null,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFormField(
                    controller: streetC,
                    decoration: InputDecoration(
                      labelText: "Street",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                    ),
                    validator: (value) => value!.isEmpty ? "Enter your street" : null,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFormField(
                    controller: addressC,
                    decoration: InputDecoration(
                      labelText: "Address",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                    ),
                    validator: (value) => value!.isEmpty ? "Enter your address" : null,
                  ),
                ),
        
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: SizedBox(
                    width: double.infinity, // 🔁 Full width
                    child: ElevatedButton(
                      onPressed: isSaving ? null : saveProfile,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black, // Optional: dark contrast
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0), // 🔁 Rounded edges
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16.0), // Optional: height
                      ),
                      child: isSaving
                          ? CircularProgressIndicator(color: Colors.white)
                          : Text("Update", style: AppWidget.whiteTextFieldStyle(),),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
        
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () async {
                        await FirebaseAuth.instance.signOut();
                        Navigator.pushReplacementNamed(context, '/login');
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                      ),
                      child: Text("Sign Out", style: AppWidget.roiTextFieldStyle(),),
                    ),
                  ),
                ),
        
              ],
            ),
          ),
        ),
      ),
    );
  }
}
