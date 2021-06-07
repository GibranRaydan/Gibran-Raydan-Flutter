import 'package:flutter/material.dart';
import 'login_bloc.dart';
export 'login_bloc.dart';

class Provider extends InheritedWidget {
  static Provider _intance;

  factory Provider({Key key, Widget child}) {
    
    if (_intance == null) {
      _intance = new Provider._internal(key: key, child: child);
    }
    return _intance;
  }

  Provider._internal({Key key, Widget child}) : super(key: key, child: child);

  final loginBloc = LoginBloc();

  // Provider({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static LoginBloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<Provider>()).loginBloc;
  }
}
