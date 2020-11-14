import 'package:flutter/material.dart';
import 'package:flutter_calling/size_config.dart';

class DialUserPick extends StatelessWidget {
  final String image;
  final double size;

  const DialUserPick({
    Key key,
    @required this.image,
    this.size = 192,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(30 / 192 * size), //padding dependign on size
      height: getProportionateScreenHeight(size),
      width: getProportionateScreenWidth(size),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            Colors.white.withOpacity(0.02),
            Colors.white.withOpacity(0.05),
          ],
          stops: [0.5, 1],
        ),
      ),
      child: Image.asset(
        image,
      ),
    );
  }
}
