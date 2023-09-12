import 'package:flutter/material.dart';
import 'package:hng_stage_two/main.dart';

class CvPage extends StatelessWidget {
  final CvDetails cvDetails;
   CvPage({
     Key? key,
    required this.cvDetails
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDE7F6),
      appBar: AppBar(
        title: Text("CV",textAlign: TextAlign.start,
          style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0,right: 10,left: 20),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed("/editPage");
                  },
                  child: ValueListenableBuilder<String>(
                    valueListenable: cvDetails.fullName,
                    builder: (context, fullName, child){
                      return Text("Full Name: $fullName",
                        style:TextStyle(fontSize: 19,fontWeight: FontWeight.bold) ,);
                    },
                  ),
                ),
                SizedBox(height: 10,),
                 GestureDetector(
                   onTap: (){
                     Navigator.of(context).pushNamed("/editPage");
                   },
                   child: ValueListenableBuilder<String>(
                    valueListenable: cvDetails.track,
                    builder: (context,track,child) {
                      return Text("Track: $track",
                        style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),);

                }),
                 ),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed("/editPage");
                  },
                  child: ValueListenableBuilder<String>(
                      valueListenable: cvDetails.slackUserName,
                      builder: (context,slackUserName,child) {
                        return Text("Slack UserName: $slackUserName",
                          style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),);

                      }),
                ),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed("/editPage");
                  },
                  child: ValueListenableBuilder<String>(
                      valueListenable: cvDetails.githubHandle,
                      builder: (context,githubHandle,child) {
                        return Text("Github Handle: $githubHandle",
                          style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),);

                      }),
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed("/editPage");
                  },
                  child: ValueListenableBuilder<String>(
                      valueListenable: cvDetails.bio,
                      builder: (context,bio,child) {
                        return Card(
                          elevation: 3,
                          child: Text("Bio: $bio",
                            style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        );

                      }),
                )

                // ElevatedButton(onPressed: (){
                //   Navigator.of(context).pushNamed("/editPage");
                // }, child: Text("Edit"))
//
              ],
            ),

          ),
        ),
      ),

    );
  }
}
