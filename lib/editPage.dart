import 'package:flutter/material.dart';
import 'package:hng_stage_two/main.dart';



class EditPage extends StatefulWidget {
   final CvDetails cvDetails;

    EditPage({
     required this.cvDetails,
     Key? key}) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController trackController = TextEditingController();
  final TextEditingController slackUserNameController = TextEditingController();

  final TextEditingController gitHubController = TextEditingController();
  final TextEditingController bioController = TextEditingController();



  String editingField = "";

  @override
  Widget build(BuildContext context) {
    if (editingField == 'name') {
      fullNameController.text = widget.cvDetails.fullName.value;
    } else if (editingField == 'profession') {
      trackController.text = widget.cvDetails.track.value;
    }

    return Scaffold(
      backgroundColor: Color(0xFFEDE7F6),
      appBar: AppBar(
        title: Text("EDIT CV",textAlign: TextAlign.start,
          style: TextStyle(color: Colors.white,fontWeight:
          FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(

            children: [
              //if the edit field is fullname,this should happen
              if (editingField == 'fullName')
              Container(
                height: 100,
                padding: EdgeInsets.only(left: 13,right: 13),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: TextField(
                  controller:fullNameController,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 20,
                    color:Colors.orangeAccent, ),
                      hintText: 'FullName'),
                ),
              ),
              //if the edit field is track,this should happen
              if (editingField == 'track')
              Container(
                height: 100,
                padding: EdgeInsets.only(left: 13,right: 13),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: TextField(
                  controller: trackController,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 20,
                        color:Colors.orangeAccent, ),
                      hintText: 'Track'),
                ),
              ),
              //if the edit field is slackusername,this should happen
              if (editingField == 'slackUserName')
                Container(
                  height: 100,
                  padding: EdgeInsets.only(left: 13,right: 13),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: TextField(
                    controller: slackUserNameController,
                    decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 20,
                          color:Colors.orangeAccent, ),
                        hintText: 'Slack Username'),
                  ),
                ),
              //if the edit field is github,this should happen
              if (editingField == 'githubHandle')
                Container(
                  height: 100,
                  padding: EdgeInsets.only(left: 13,right: 13),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: TextField(
                    controller: gitHubController,
                    decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 20,
                          color:Colors.orangeAccent, ),
                        hintText: 'GitHubHandle'),
                  ),
                ),
              //if the edit field is bio,this should happen
              if (editingField == 'bio')
                Container(
                  height: 100,
                  padding: EdgeInsets.only(left: 13,right: 13),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: TextField(
                    controller: bioController,
                    decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 20,
                          color:Colors.orangeAccent, ),
                        hintText: 'Bio'),
                  ),
                ),
              SizedBox(height: 20.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  minimumSize: Size(150, 60)
                ),
                onPressed: () {
                  if (editingField == 'fullName') {
                    widget.cvDetails.fullName.value = fullNameController.text;
                  } else if (editingField == 'track') {
                    widget.cvDetails.track.value = trackController.text;
                  }
                  else if (editingField == 'slackUserName') {
                    widget.cvDetails.slackUserName.value = slackUserNameController.text;
                  }
                  else if (editingField == 'githubHandle') {
                    widget.cvDetails.githubHandle.value = gitHubController.text;
                  }
                  else if (editingField == 'bio') {
                    widget.cvDetails.bio.value = bioController.text;
                  }
                  Navigator.of(context).pop();
                },
                child: Text('Save',style: TextStyle(
                  color: Colors.white,fontSize: 25
                ),),
              ),
            ],
          ),
        ),
      ),
    );

  }
  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    editingField = ModalRoute.of(context)!.settings.arguments as String;

  }
}
