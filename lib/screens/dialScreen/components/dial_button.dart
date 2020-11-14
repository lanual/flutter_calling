import 'package:flutter/material.dart';
import 'package:flutter_calling/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DialButton extends StatelessWidget {
  final String iconSrc, text;
  final VoidCallback press;
  const DialButton({
    @required this.iconSrc,
    @required this.press,
    @required this.text,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(120),
      child: FlatButton(
        onPressed: press,
        padding:
            EdgeInsets.symmetric(vertical: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            SvgPicture.asset(
              iconSrc,
              color: Colors.white,
              height: 36,
            ),
            VerticalSpacing(of: 5),
            Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
