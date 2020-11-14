import 'package:flutter/material.dart';
import 'package:flutter_calling/components/dial_user_pic.dart';
import 'package:flutter_calling/constants.dart';

class UserCallingCard extends StatelessWidget {
  final String name, image;

  const UserCallingCard({
    Key key,
    @required this.image,
    @required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgoundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DialUserPick(
            size: 112,
            image: image,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          Text(
            'Calling ...',
            style: TextStyle(
              color: Colors.white60,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
