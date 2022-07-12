import 'dart:async';

import 'package:vgd/presentation/base/base_viewmodel.dart';

class LoginViewModel extends BaseViewModel with LoginViewModelInputs,LoginViewModelOutputs{

  final StreamController<String>  _usernameStreamController = StreamController<String>.broadcast();
  final StreamController<String>  _passwordStreamController = StreamController<String>.broadcast();
  final StreamController<void>  _registrationBtnController = StreamController<void>.broadcast();

  // var loginObject = LoginObject("","");

  @override
  void dispose() {
    // TODO: implement dispose
    _usernameStreamController.close();
    _passwordStreamController.close();
    _registrationBtnController.close();
  }

  @override
  void start() {
    // TODO: implement start
  }

  @override
  // TODO: implement inputPassword
  Sink get inputPassword => _passwordStreamController.sink;

  @override
  // TODO: implement inputUsername
  Sink get inputUsername => _usernameStreamController.sink;

  @override
  login() {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  // TODO: implement outputIsPasswordValid
  Stream<bool> get outputIsPasswordValid => _passwordStreamController.stream
      .map((password) => _isPasswordValid(password));

  @override
  // TODO: implement outputIsUsernameValid
  Stream<bool> get outputIsUsernameValid => _usernameStreamController.stream
      .map((username) => _isUsernameIsValid(username));

  @override
  setPassword(String password) {
    // TODO: implement setPassword
    inputPassword.add(password);
  }

  @override
  setUserName(String username) {
    // TODO: implement setUserName
    inputUsername.add(username);
  }

  _isPasswordValid(String password){
    return password.isNotEmpty;
  }

  _isUsernameIsValid(String username){
    return username.isNotEmpty;
  }

  @override
  // TODO: implement inputRegistrationBtn
  Sink get inputRegistrationBtn => _registrationBtnController.sink;

  @override
  // TODO: implement outputRegistrationBtn
  Stream<void> get outputRegistrationBtn => _registrationBtnController.stream
      .map((_) => _gotoRegistrationScreen());

  _gotoRegistrationScreen() {

  }

}



/// Events on screen
abstract class LoginViewModelInputs{

  setUserName(String username);
  setPassword(String password);
  login();

  ///Sink for Streams

  Sink get inputUsername;
  Sink get inputPassword;
  Sink get inputRegistrationBtn;

}

/// executing event and result to view
abstract class LoginViewModelOutputs{
  Stream<bool> get outputIsUsernameValid;
  Stream<bool> get outputIsPasswordValid;
  Stream<void> get outputRegistrationBtn;

}