import 'package:flutter/material.dart';

import 'package:flutter_calling/screens/groupCall/components/user_calling_card.dart';
import 'package:flutter_calling/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isPortrait = SizeConfig.orientation == Orientation.portrait;

    return GridView.builder(
      padding: EdgeInsets.zero,
      itemCount: demoData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: isPortrait ? 0.53 : 1.5,
        crossAxisCount: isPortrait ? 2 : 3,
        //mainAxisSpacing: 20,
        //crossAxisSpacing: 20,
      ),
      itemBuilder: (context, index) {
        return demoData[index]['isCalling']
            ? UserCallingCard(
                image: demoData[index]['image'],
                name: demoData[index]['name'],
              )
            : Image.asset(
                demoData[index]['image'],
                fit: BoxFit.cover,
              );
      },
    );
  }
}

List<Map<String, dynamic>> demoData = [
  {
    "isCalling": false,
    "name": "User 1",
    "image": "assets/images/goup_call_1.png",
  },
  {
    "isCalling": true,
    "name": "Steve jon",
    "image": "assets/images/group_call_face_small.png",
  },
  {
    "isCalling": false,
    "name": "User 1",
    "image": "assets/images/group_call_face_2.png",
  },
  {
    "isCalling": false,
    "name": "User 1",
    "image": "assets/images/group_call_face_3.png",
  },
];
