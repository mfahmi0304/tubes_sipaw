import 'package:flutter/material.dart';
import 'package:tubes_sipaw/constants.dart';

class TitleWithNames extends StatelessWidget {
  const TitleWithNames({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TitleWithName(
      title: "Siti Nurholis",
      image: "assets/profil.png",
      subtitle: "Bandung",
    );
  }
}


class TitleWithName extends StatelessWidget {
  const TitleWithName({
    Key key, 
    this.title, 
    this.image, 
    this.subtitle,
  }) : super(key: key);

  final String title;
  final image;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: CircleAvatar(
                radius: 27,
                backgroundImage: AssetImage(image),
                backgroundColor: kButtonsColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 7.0, top: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: kTextColor,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: kButtonColor,
                          size: 12,
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              subtitle,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                                color: kButtonColor,)
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
