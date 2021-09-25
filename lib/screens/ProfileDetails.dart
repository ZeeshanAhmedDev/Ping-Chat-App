import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pingchat/components/custom_back_arrow_icon.dart';
import 'package:pingchat/components/custom_container_button.dart';
import 'package:pingchat/screens/ContactLists.dart';
import 'package:pingchat/utils/const.dart';

import 'EnableNotificationsScreen.dart';

class ProfileDetails extends StatefulWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  _ProfileDetailsState createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  File? image;

  Future getImageFromGallery() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;

      final imageTemp = File(image.path);
      setState(() {
        this.image = imageTemp;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBackArrowIcon(),
                  Padding(
                    padding: const EdgeInsets.only(top: 22.0, right: 25.0),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => ContactLists(),
                          )),
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => ContactLists(),
                          ),
                        ),
                        child: Text(
                          'Skip',
                          style: TextStyle(color: kGreyColor, fontSize: 18.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Text(
                  'Profile Details',
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
              ),
              SizedBox(
                height: 52,
              ),
              Image.asset('images/imagpicture.png'),
              GestureDetector(
                onTap: () => getImageFromGallery(),
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 35,
                  child: Text(
                    'Upload',
                    style: TextStyle(
                      color: kCustomContainerColor,
                      fontSize: 15.0,
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: kCustomContainerColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  cursorColor: kCustomContainerColor,
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    contentPadding: EdgeInsets.all(20),
                    // focusColor: kCustomContainerColor,
                    labelText: 'First Name',
                    labelStyle: TextStyle(
                      height: 2,
                      color: Colors.black,
                      backgroundColor: Colors.transparent,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      // fontFamily: 'Lato-Bold.ttf',
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: kCustomContainerColor,
                      ),
                    ),
                  ),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  cursorColor: kCustomContainerColor,
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    contentPadding: EdgeInsets.all(20),
                    // focusColor: kCustomContainerColor,
                    labelText: 'Last Name',
                    labelStyle: TextStyle(
                      height: 2,
                      color: Colors.black,
                      backgroundColor: Colors.transparent,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      // fontFamily: 'Lato-Bold.ttf',
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: kCustomContainerColor,
                      ),
                    ),
                  ),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  cursorColor: kCustomContainerColor,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      CupertinoIcons.calendar,
                      color: kCustomContainerColor,
                    ),
                    alignLabelWithHint: true,
                    contentPadding: EdgeInsets.all(20),
                    // focusColor: kCustomContainerColor,
                    labelText: 'Date Of Birth',
                    labelStyle: TextStyle(
                      height: 2,
                      color: Colors.black,
                      backgroundColor: Colors.transparent,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      // fontFamily: 'Lato-Bold.ttf',
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: kCustomContainerColor,
                      ),
                    ),
                  ),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              CustomContainerButton(
                height: 60,
                width: 360,
                text: 'Continue',
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => ContactLists(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
