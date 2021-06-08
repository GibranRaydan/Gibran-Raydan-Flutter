import 'package:flutter/material.dart';
import 'widgets/navigation_drawer.dart';
import 'widgets/profile_page_widgets/widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawer(),
        appBar: buildAppBar(),
        body: buildBody(),
      );

  AppBar buildAppBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.white),
      elevation: 0.0,
      backgroundColor: Color.fromRGBO(0, 169, 138, 0.8),
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
                Expanded(flex: 3,
                  child: ProfileTop(
                    profilePictureUrl: 'assets/cat.jpg',
                  ),
                ),
                Expanded(flex: 4, child: ProfileScroll()),
              ],
            ),
          ),
        )
      ],
    );
  }
}
