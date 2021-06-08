import 'package:flutter/material.dart';
import 'widgets/navigation_drawer.dart';
//import 'package:login_bloc/bloc/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final bloc = Provider.of(context);
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Email : asdasdasdasd'),
          Divider(),
          Text('Password : asdasdasdasd')
        ],
      ),
    );
  }
}
