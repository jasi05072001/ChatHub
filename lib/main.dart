import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:major_project/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:major_project/screens/splash_screen.dart';


late Size mq;

void main() {
  _initializeFirebase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0x1A000080), // Set your desired color here
    ));
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]);


    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ChatHub",
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              centerTitle: true,
              elevation: 1.5,
              iconTheme: const IconThemeData(color: Colors.white),
              titleTextStyle: GoogleFonts.robotoSerif(fontStyle: FontStyle.normal,color: Colors.white,fontSize: 20),
              backgroundColor: const Color(0xB3000080),
          )
      ),
      home: const SplashScreen(),
    );
  }
}
_initializeFirebase() async {
  await Firebase.initializeApp(
    options :DefaultFirebaseOptions.currentPlatform,
  );
}



