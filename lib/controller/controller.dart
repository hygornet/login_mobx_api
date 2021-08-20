import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:formlogin/api/api_login.dart';
import 'package:formlogin/models/login_model.dart';
import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  @observable
  String loginController = "";
  @observable
  String senhaController = "";

  @observable
  bool isLoading = false;

  @action
  void setLogin(String value) => loginController = value;
  @action
  void setPassword(String value) => senhaController = value;

  @computed
  bool get formIsValid =>
      loginController.length >= 3 && senhaController.length >= 3;

  @action
  Future logarStore() async {
    isLoading = true;
    final result = await LoginApi.logar(loginController, senhaController);
    isLoading = false;
    return result;
  }
}
