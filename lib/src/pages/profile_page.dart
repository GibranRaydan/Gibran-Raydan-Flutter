import 'package:flutter/material.dart';
import 'package:login_bloc/src/pages/widgets/profile_scroll.dart';

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
    return Stack(
      children: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ProfileTop(
                  profilePictureUrl: 'assets/cat.jpg',
                ),
                ContactInformation(
                    phone: '+57 3138129220', email: 'raydan.gibran@gmail.com'),
                ProfileScroll(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
