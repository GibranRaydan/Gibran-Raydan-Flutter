import 'dart:async';
import 'package:login_bloc/bloc/validators.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc with Validators {
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  // recover Stream data
  Stream<String> get emailStream => _emailController.stream.transform(passwordValidator);
  Stream<String> get passwordStream => _passwordController.stream.transform(passwordValidator);

  Stream<bool> get formValidationStream => Rx.combineLatest2(emailStream, passwordStream, (e, p) => true);

  // insert values to the Stream
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  // get the last value of the streams
  String get email => _emailController.value;
  String get password => _passwordController.value;

  dispose() {
    _emailController?.close();
    _passwordController?.close();
  }
}
