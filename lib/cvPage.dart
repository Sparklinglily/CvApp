import 'package:flutter/material.dart';
import 'package:hng_stage_two/main.dart';

class CvPage extends StatelessWidget {
  final CvDetails cvDetails;
  CvPage({Key? key, required this.cvDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF8E1),
      appBar: AppBar(
        title: Text(
          "CV",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, right: 15, left: 15),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      "/editPage",
                    );
                  },
                  child: ValueListenableBuilder<String>(
                    valueListenable: cvDetails.fullName,
                    builder: (context, fullName, child) {
                      return Text(
                        "Full Name: $fullName",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("/editPage");
                  },
                  child: ValueListenableBuilder<String>(
                      valueListenable: cvDetails.email,
                      builder: (context, email, child) {
                        return Text(
                          "Email address:  $email",
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        );
                      }),
                ),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      "/editPage",
                    );
                  },
                  child: ValueListenableBuilder<String>(
                      valueListenable: cvDetails.slackUserName,
                      builder: (context, slackUserName, child) {
                        return Text(
                          "Slack UserName: $slackUserName",
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        );
                      }),
                ),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      "/editPage",
                    );
                  },
                  child: ValueListenableBuilder<String>(
                      valueListenable: cvDetails.githubHandle,
                      builder: (context, githubHandle, child) {
                        return Text(
                          "Github Handle: $githubHandle",
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        );
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      "/editPage",
                    );
                  },
                  child: ValueListenableBuilder<String>(
                      valueListenable: cvDetails.bio,
                      builder: (context, bio, child) {
                        return RichText(
                            text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                              TextSpan(
                                  text: "Bio: \n",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              TextSpan(
                                  text: cvDetails.bio.value,
                                  style: TextStyle(fontSize: 16))
                            ]));
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        // minimumSize: Size(150, 50)
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed("/editPage");
                      },
                      child: Text(
                        "Edit",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
