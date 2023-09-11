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
      body: Padding(
        padding: const EdgeInsets.only(top: 35.0,left: 20),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(child:
              ValueListenableBuilder<String>(
                valueListenable: cvDetails.fullName,
                builder: (context, fullName, child){
                  return Text("Fullname: $fullName",
                    style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold) ,);
                },
              )),
              SizedBox(height: 10,),
              Flexible(child: ValueListenableBuilder<String>(
                valueListenable: cvDetails.track,
                builder: (context,track,child) {
                  return Text("Track: $track",
                    style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),);

              })
              ),
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
