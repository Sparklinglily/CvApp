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
      backgroundColor: Color(0xFFFFE0B2),
      appBar: AppBar(
        title: Text("CV",textAlign: TextAlign.start,
          style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold),),
      ),
      body: Padding(
          padding: const EdgeInsets.only(top: 10.0,right: 10,left: 10),
          child: Container(
            padding: EdgeInsets.all(14),
            height: double.maxFinite,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xFFEDE7F6),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(35)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed("/editPage",arguments: "fullName");
                  },
                  child: ValueListenableBuilder<String>(
                    valueListenable: cvDetails.fullName,
                    builder: (context, fullName, child){

                      return Text("Full Name: $fullName",
                        style:TextStyle(fontSize: 19,fontWeight:
                        FontWeight.bold) ,);
                    },
                  ),
                ),
                SizedBox(height: 5,),
                 GestureDetector(
                   onTap: (){
                     Navigator.of(context).pushNamed("/editPage",arguments: "track");
                   },
                   child: ValueListenableBuilder<String>(
                    valueListenable: cvDetails.track,
                    builder: (context,track,child) {
                      return Text("Track: $track",
                        style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),);

                }),
                 ),
                SizedBox(height: 5,),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed("/editPage",
                        arguments: "slackUserName");
                  },
                  child: ValueListenableBuilder<String>(
                      valueListenable: cvDetails.slackUserName,
                      builder: (context,slackUserName,child) {
                        return Text("Slack UserName: $slackUserName",
                          style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),);

                      }),
                ),
                SizedBox(height: 5,),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed("/editPage",
                    arguments: 'githubHandle' );
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
                    Navigator.of(context).pushNamed("/editPage",
                    arguments:'bio' );
                  },
                  child: ValueListenableBuilder<String>(
                      valueListenable: cvDetails.bio,
                      builder: (context,bio,child) {
                        return RichText(text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children:<TextSpan> [
                              TextSpan(
                                  text: "Bio: ",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16
                              )
                              ),
                              TextSpan(text: cvDetails.bio.value,
                                  style: TextStyle(
                                      fontSize: 16))
                            ]
                        ));


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


    );
  }
}
