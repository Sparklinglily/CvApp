import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'cvPage.dart';
import 'editPage.dart';

void main() {
  runApp(MyApp());
}

//create a custom class for storing your data
class CvDetails{
  ValueNotifier<String> fullName = ValueNotifier<String>("");
  ValueNotifier<String> track  = ValueNotifier<String>("");
}


class MyApp extends StatelessWidget {
  //?
  final CvDetails cvDetails = CvDetails();
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple
        ),
        appBarTheme: const AppBarTheme(
          color: Color(0xFF651FFF),
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

