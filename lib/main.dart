import 'package:flutter/material.dart';
import 'package:flutter_calling/screens/audioCallWithImage/audio_call_with_image_screen.dart';
import 'package:flutter_calling/screens/dialScreen/dial_screen.dart';
import 'package:flutter_calling/screens/groupCall/group_call_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DialScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
