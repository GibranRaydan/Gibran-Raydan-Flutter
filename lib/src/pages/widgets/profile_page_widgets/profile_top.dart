import 'package:flutter/material.dart';

class ProfileTop extends StatelessWidget {
  const ProfileTop({Key key, this.profilePictureUrl}) : super(key: key);

  final String profilePictureUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color.fromRGBO(0, 169, 138, 0.8),
            Color.fromRGBO(31, 140, 202, 1)
          ])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _profilePicture(),
          SizedBox(height: 10),
          _profileTitle(),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Container _profilePicture() {
    return Container(
      height: 130.0,
      width: 130,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        //color: Colors.red,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(profilePictureUrl)
        )
      ),
    );
  }

  Container _profileTitle() {
    return Container(
      color: Colors.transparent,
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: const <TextSpan>[
            TextSpan(
              text: 'Gibran Raydan' '\n',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5),
            ),
            TextSpan(
              text: 'System Engineer ' '\n',
              style: TextStyle(
                  height: 1.5,
                  fontSize: 17,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 1),
            ),
            TextSpan(
              text: 'Back-End DEV',
              style: TextStyle(
                  height: 1.5,
                  fontSize: 17,
                  fontWeight: FontWeight.w300,
                  letterSpacing: -0.6),
            ),
          ])),
    );
  }
}
