import 'package:flutter/material.dart';
import 'package:flutter_calling/components/dial_user_pic.dart';
import 'package:flutter_calling/components/rounded_button.dart';
import 'package:flutter_calling/constants.dart';
import 'package:flutter_calling/screens/dialScreen/components/dial_button.dart';
import 'package:flutter_calling/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isPortrait = SizeConfig.orientation == Orientation.portrait;

    return SafeArea(
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: isPortrait
                ? SizeConfig.screenHeight * 0.96
                : SizeConfig.screenWidth * 0.96,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Andrea \nEva Luna',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: Colors.white),
              ),
              Text(
                'Calling...',
                style: TextStyle(color: Colors.white60),
              ),
              DialUserPick(
                image: 'assets/images/calling_face.png',
                size: isPortrait ? 192 : 450,
              ),
              Center(
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  children: [
                    DialButton(
                      iconSrc: 'assets/icons/Icon Mic.svg',
                      press: () {},
                      text: 'Audio',
                    ),
                    DialButton(
                      iconSrc: 'assets/icons/Icon Volume.svg',
                      press: () {},
                      text: 'Microphone',
                    ),
                    DialButton(
                      iconSrc: 'assets/icons/Icon Video.svg',
                      press: () {},
                      text: 'Video',
                    ),
                    DialButton(
                      iconSrc: 'assets/icons/Icon Message.svg',
                      press: () {},
                      text: 'Message',
                    ),
                    DialButton(
                      iconSrc: 'assets/icons/Icon User.svg',
                      press: () {},
                      text: 'Add Contact',
                    ),
                    DialButton(
                      iconSrc: 'assets/icons/Icon Voicemail.svg',
                      press: () {},
                      text: 'Voice mail',
                    ),
                  ],
                ),
              ),
              RoundedButton(
                  color: kRedColor,
                  iconColor: Colors.white,
                  iconSrc: 'assets/icons/call_end.svg',
                  press: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
