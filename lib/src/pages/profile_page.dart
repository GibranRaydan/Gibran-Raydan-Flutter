import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: buildAppBar(),
        body: buildBody(),
      );

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Color.fromRGBO(0, 169, 138, 0.8),
      actions: [
        IconButton(
            iconSize: 25,
            color: Colors.white,
            icon: Icon(Icons.menu_rounded),
            onPressed: () => {}),
        Spacer()
      ],
    );
  }

  Stack buildBody() {
    // final circle = Container(
    //   width: 100.0,
    //   height: 100.0,
    //   decoration:
    //       BoxDecoration(shape: BoxShape.circle, color: Colors.lightGreenAccent),
    // );
    return Stack(
      children: [
        // Positioned(top: -20.0, left: 300.0, child: circle),
        // Positioned(top: 40.0, left: 0.0, child: circle),
        // Positioned(top: 90.0, left: 30.0, child: circle),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                buildTop(),
                buildScrollView(),
              ],
            ),
          ),
        )
      ],
    );
  }

  Expanded buildScrollView() {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            buildContactInformationRow(),
            SizedBox(height: 10),
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
          generlTitle("Front-End:"),
          frontEndContainer(),
          generlTitle("Back-End:"),
          programsContainer(),
          generlTitle("DB:"),
          dbContainer(),
        ],
      ),
    );
  }

  Container generlTitle(String text) {
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
                        fontSize: 20,
                        fontWeight: FontWeight.w400)),
              ])),
          Spacer()
        ],
      ),
    );
  }

  Container frontEndContainer() {
    return Container(
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
      margin: EdgeInsets.only(bottom: 10),
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

  Container programsContainer() {
    return Container(
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
                    'I am a systems engineer with 1/2 years of experience in back-end software development.'
                    '\n',
                style: TextStyle(color: Colors.black54)),
          ])),
    );
  }

  Container lenguagesParagraph() {
    return Container(
      margin: EdgeInsets.only(top: 2, left: 10, right: 255, bottom: 5),
      child: RichText(
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
                text: ' * English: B2'
                    '\n'
                    ' * Spanish: Native'
                    '\n',
                style: TextStyle(color: Colors.black54)),
          ])),
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

  Row buildContactInformationRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.phone_rounded,
                color: Color.fromRGBO(31, 140, 202, 1),
                size: 30,
              ),
              SelectableText(
                '+57 3138129220',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color.fromRGBO(31, 140, 202, 1)),
              )
            ],
          ),
        ),
        Divider(),
        Container(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.email_rounded,
                color: Color.fromRGBO(31, 140, 202, 1),
                size: 30,
              ),
              SelectableText(
                'raydan.gibran@gmail.com',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color.fromRGBO(31, 140, 202, 1)),
              )
            ],
          ),
        ),
      ],
    );
  }

  Container buildTop() {
    return Container(
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
          profilePicture(),
          SizedBox(height: 10),
          profileTitle(),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Container profilePicture() {
    return Container(
      decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
      height: 130.0,
    );
  }

  Container profileTitle() {
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