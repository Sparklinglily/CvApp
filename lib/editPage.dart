import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hng_stage_two/main.dart';

class EditPage extends StatefulWidget {
  final CvDetails cvDetails;

  EditPage({required this.cvDetails, Key? key}) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController slackUserNameController = TextEditingController();

  final TextEditingController gitHubController = TextEditingController();
  final TextEditingController bioController = TextEditingController();

  //to populate textfields with initial data
  @override
  void initState() {
    super.initState();
    fullNameController.text = widget.cvDetails.fullName.value;
    emailController.text = widget.cvDetails.email.value;
    slackUserNameController.text = widget.cvDetails.slackUserName.value;
    gitHubController.text = widget.cvDetails.githubHandle.value;
    bioController.text = widget.cvDetails.bio.value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF8E1),
      appBar: AppBar(
        title: Text(
          "EDIT CV",
          textAlign: TextAlign.start,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 13, right: 13),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: TextField(
                  controller: fullNameController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.orangeAccent,
                      ),
                      hintText: 'FullName'),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.only(left: 13, right: 13),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.orangeAccent,
                      ),
                      hintText: 'Email'),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.only(left: 13, right: 13),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: TextField(
                  controller: slackUserNameController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.orangeAccent,
                      ),
                      hintText: 'Slack Username'),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.only(left: 13, right: 13),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: TextField(
                  controller: gitHubController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.orangeAccent,
                      ),
                      hintText: 'GitHubHandle'),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.only(left: 13, right: 13),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: TextField(
                  controller: bioController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.orangeAccent,
                      ),
                      hintText: 'Bio'),
                  maxLines: null,
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    minimumSize: Size(150, 50)),
                onPressed: () {
                  widget.cvDetails.fullName.value = fullNameController.text;

                  widget.cvDetails.email.value = emailController.text;

                  widget.cvDetails.slackUserName.value =
                      slackUserNameController.text;

                  widget.cvDetails.githubHandle.value = gitHubController.text;

                  widget.cvDetails.bio.value = bioController.text;

                  Navigator.of(context).pop();
                },
                child: Text(
                  'Save',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

//to avoid leeks
  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    slackUserNameController.dispose();
    gitHubController.dispose();
    bioController.dispose();
    super.dispose();
  }
}
