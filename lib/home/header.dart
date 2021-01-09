import 'package:flutter/material.dart';
import 'package:tubes_sipaw/constants.dart';

class HeaderWithLogoBox extends StatelessWidget {
  const HeaderWithLogoBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.1,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: CustomShape(),
            child: Container(
              height: size.height * 1,
              color: kPrimaryColor,
            ),
          ),
          Positioned(
            //top: 50,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 60),
              height: 50,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/logo2.png"))),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, 0);
    path.quadraticBezierTo(width / 2, height, width, 0);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
