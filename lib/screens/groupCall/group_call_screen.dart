import 'package:flutter/material.dart';
import 'package:flutter_calling/components/rounded_button.dart';
import 'package:flutter_calling/constants.dart';
import 'package:flutter_calling/screens/groupCall/components/body.dart';
import 'package:flutter_calling/size_config.dart';
import 'package:flutter_svg/svg.dart';

class GroupCallScreen extends StatelessWidget {
  const GroupCallScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: buildBottonNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/Icon Back.svg'),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            'assets/icons/Icon User.svg',
            height: 24,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Container buildBottonNavBar() {
    bool isPortrait = SizeConfig.orientation == Orientation.portrait;

    return Container(
      color: kBackgoundColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Row(
            children: [
              RoundedButton(
                size: isPortrait
                    ? SizeConfig.screenWidth * 0.14
                    : SizeConfig.screenHeight * 0.14,
                iconSrc: "assets/icons/Icon Close.svg",
                color: kRedColor,
                iconColor: Colors.white,
                press: () {},
              ),
              Spacer(flex: 3),
              RoundedButton(
                size: isPortrait
                    ? SizeConfig.screenWidth * 0.14
                    : SizeConfig.screenHeight * 0.14,
                iconSrc: "assets/icons/Icon Volume.svg",
                color: Color(0xFF2C3840),
                iconColor: Colors.white,
                press: () {},
              ),
              Spacer(),
              RoundedButton(
                size: isPortrait
                    ? SizeConfig.screenWidth * 0.14
                    : SizeConfig.screenHeight * 0.14,
                iconSrc: "assets/icons/Icon Mic.svg",
                color: Color(0xFF2C3840),
                iconColor: Colors.white,
                press: () {},
              ),
              Spacer(),
              RoundedButton(
                size: isPortrait
                    ? SizeConfig.screenWidth * 0.14
                    : SizeConfig.screenHeight * 0.14,
                iconSrc: "assets/icons/Icon Video.svg",
                color: Color(0xFF2C3840),
                iconColor: Colors.white,
                press: () {},
              ),
              Spacer(),
              RoundedButton(
                size: isPortrait
                    ? SizeConfig.screenWidth * 0.14
                    : SizeConfig.screenHeight * 0.14,
                iconSrc: "assets/icons/Icon Repeat.svg",
                color: Color(0xFF2C3840),
                iconColor: Colors.white,
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
