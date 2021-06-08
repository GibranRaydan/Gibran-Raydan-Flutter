import 'package:flutter/material.dart';
import 'widgets.dart';

class ProfileScroll extends StatelessWidget {
  const ProfileScroll({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildAboutContainer(),
          ],
        ),
      ),
    );
  }

  Container buildAboutContainer() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color.fromRGBO(0, 169, 138, 0.2),
            Color.fromRGBO(31, 140, 202, 0.2)
          ])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          aboutContainerTitle(),
          aboutParagraph(),
          lenguagesParagraph(),
          generalTitle("Back-End:", 20.0),
          programsContainer(),
          generalTitle("Data bases:", 20.0),
          dbContainer(),
          generalTitle("Front-End:", 20.0),
          frontEndContainer(),
          generalTitle("Cloud:", 20.0),
          cloudContainer()
        ],
      ),
    );
  }

  Container generalTitle(String text, double fontSize) {
    return Container(
      margin: EdgeInsets.only(top: 2, left: 10, right: 255, bottom: 5),
      child: Row(
        children: [
          RichText(
              textAlign: TextAlign.left,
              text: TextSpan(children: [
                TextSpan(
                    text: text + '\n',
                    style: TextStyle(
                        height: 2,
                        color: Colors.black45,
                        fontSize: fontSize,
                        fontWeight: FontWeight.w400)),
              ])),
          Spacer()
        ],
      ),
    );
  }

  Container frontEndContainer() {
    return Container(
      margin: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ImageContainer(
            sizex: 120.0,
            sizey: 100.0,
            imagePath: 'assets/flutter-logo.svg',
          )
        ],
      ),
    );
  }

  Container dbContainer() {
    return Container(
      margin: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ImageContainer(
            sizex: 120.0,
            sizey: 100.0,
            imagePath: 'assets/mysql.svg',
          ),
          ImageContainer(
            sizex: 120.0,
            sizey: 100.0,
            imagePath: 'assets/postgresql.svg',
          )
        ],
      ),
    );
  }

  Container cloudContainer() {
    return Container(
      margin: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ImageContainer(
            sizex: 120.0,
            sizey: 100.0,
            imagePath: 'assets/aws.svg',
          ),
          ImageContainer(
            sizex: 120.0,
            sizey: 100.0,
            imagePath: 'assets/google-cloud.svg',
          )
        ],
      ),
    );
  }

  Container programsContainer() {
    return Container(
      margin: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ImageContainer(
            sizex: 90.0,
            sizey: 70.0,
            imagePath: 'assets/dart.svg',
          ),
          ImageContainer(
            sizex: 90.0,
            sizey: 70.0,
            imagePath: 'assets/python.svg',
          ),
          ImageContainer(
            sizex: 90.0,
            sizey: 70.0,
            imagePath: 'assets/php.svg',
          ),
          ImageContainer(
            sizex: 90.0,
            sizey: 70.0,
            imagePath: 'assets/nodejs.svg',
          ),
        ],
      ),
    );
  }

  Container aboutParagraph() {
    return Container(
      margin: EdgeInsets.only(top: 2, left: 10, right: 10, bottom: 5),
      child: RichText(
          textAlign: TextAlign.start,
          text: TextSpan(children: [
            TextSpan(
                text:
                    'I am a systems engineer with a year and a half of experience in back-end software development.'
                    '\n',
                style: TextStyle(color: Colors.black54)),
          ])),
    );
  }

  Container lenguagesParagraph() {
    return Container(
      margin: EdgeInsets.only(top: 2, left: 10, right: 255, bottom: 5),
      child: Row(
        children: [
          RichText(
              textAlign: TextAlign.left,
              text: TextSpan(children: [
                TextSpan(
                    text: 'Languages:' '\n',
                    style: TextStyle(
                        height: 2,
                        color: Colors.black45,
                        fontSize: 20,
                        fontWeight: FontWeight.w400)),
                TextSpan(
                    text: '* English: B2'
                        '\n'
                        '* Spanish: Native'
                        '\n',
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.w400)),
              ])),
        ],
      ),
    );
  }

  Container aboutContainerTitle() {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'About Gibran',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 26,
              fontWeight: FontWeight.w500,
            ),
          ),
          Icon(
            Icons.supervised_user_circle_rounded,
            size: 50,
            color: Color.fromRGBO(0, 169, 138, 0.3),
          )
        ],
      ),
    );
  }
}
