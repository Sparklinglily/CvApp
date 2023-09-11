import 'package:flutter/material.dart';
import 'package:hng_stage_two/main.dart';

class EditPage extends StatelessWidget {
  final CvDetails cvDetails;
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController trackController = TextEditingController();

   EditPage({
     Key? key,
   required this.cvDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller:fullNameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: trackController,
              decoration: InputDecoration(labelText: 'Profession'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                cvDetails.fullName.value = fullNameController.text;
                cvDetails.track.value = trackController.text;
                Navigator.of(context).pushNamed('/page1');
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );

  }
}
