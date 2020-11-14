import 'package:flutter/material.dart';
import 'package:flutter_calling/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RoundedButton extends StatelessWidget {
  final Color color, iconColor;
  final String iconSrc;
  final double size;
  final VoidCallback press;

  const RoundedButton({
    Key key,
    @required this.color,
    @required this.iconColor,
    @required this.iconSrc,
    @required this.press,
    this.size = 64,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(size),
      width: getProportionateScreenWidth(size),
      child: FlatButton(
        //padding: EdgeInsets.all(15 / 64 * size), //padding depending the size of the button
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        onPressed: press,
        child: SvgPicture.asset(
          iconSrc,
          color: iconColor,
        ),
      ),
    );
  }
}
