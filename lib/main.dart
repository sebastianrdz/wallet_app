import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        platform: TargetPlatform.windows,
        scaffoldBackgroundColor: const Color(0xFFFFFBF8),
        textTheme: GoogleFonts.nunitoSansTextTheme(
          Theme.of(context).textTheme,
        )
      ),
      home: HomePage(),
    );
  }
}
