import 'package:flutter/material.dart';
import 'package:flutter_calling/screens/audioCallWithImage/components/body.dart';
import 'package:flutter_calling/size_config.dart';

class AudioCallWithImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Size screen and help our UI responsive
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
