import 'package:flutter/material.dart';
import 'package:flutter_calling/constants.dart';
import 'package:flutter_calling/screens/dialScreen/components/body.dart';
import 'package:flutter_calling/size_config.dart';

class DialScreen extends StatelessWidget {
  const DialScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgoundColor,
      body: Body(),
    );
  }
}
