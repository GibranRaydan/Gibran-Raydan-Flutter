import 'dart:async';

class Validators {
  
  final passwordValidator = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    if (password.length >= 6) {
      sink.add(password);
    } else {
      sink.addError('More than 6 characters');
    }
  });
}
