import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'cvPage.dart';
import 'editPage.dart';

void main() {
  runApp(MyApp());
}

//create a custom class for storing your data
class CvDetails{
  ValueNotifier<String> fullName = ValueNotifier<String>("Carla Ejemeh Inya-Agha");
  ValueNotifier<String> track  = ValueNotifier<String>("Mobile Track(Flutter)");
  ValueNotifier<String> slackUserName = ValueNotifier<String>("Sparkling Lily");
  ValueNotifier<String> githubHandle  = ValueNotifier<String>("Sparkling Lily");

  ValueNotifier<String> bio  = ValueNotifier<String>("");

// prefilled data
  CvDetails({
    required String initialFullName,
    required String initialTrack,
    required String initialSlackUserName,
    required String initialGithubHandle,
    required String initialBio,
})
  {
    fullName.value = initialFullName;
    track.value = initialTrack;
    slackUserName.value= initialSlackUserName;
    githubHandle.value = initialGithubHandle;
    bio.value = initialBio;

  }
}


class MyApp extends StatelessWidget {
  //?
  final CvDetails cvDetails = CvDetails(
      initialFullName: 'Carla Ejemeh Inya-Agha',
      initialTrack: 'Mobile Track(Flutter)',
      initialSlackUserName: ' Sparkling Lily',
      initialGithubHandle: 'Sparkling Lily',
      initialBio: 'I am a flutter Mobile Developer. Making your ideas come to '
          'life using Flutter gives me an undescribable feeling');
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.
        fromSwatch(primarySwatch: Colors.orange
        ),
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.orangeAccent
          ),
          color: Colors.orangeAccent,
         // systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Color(0xFF651FFF),)
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: CvPage(cvDetails: cvDetails,),
      routes: {
        "/cvPage": (context)=> CvPage(cvDetails: cvDetails,),
        "/editPage": (context) => EditPage(cvDetails: cvDetails,),
      }
    );
  }
}

