// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller on ControllerBase, Store {
  Computed<bool>? _$formIsValidComputed;

  @override
  bool get formIsValid =>
      (_$formIsValidComputed ??= Computed<bool>(() => super.formIsValid,
              name: 'ControllerBase.formIsValid'))
          .value;

  final _$loginControllerAtom = Atom(name: 'ControllerBase.loginController');

  @override
  String get loginController {
    _$loginControllerAtom.reportRead();
    return super.loginController;
  }

  @override
  set loginController(String value) {
    _$loginControllerAtom.reportWrite(value, super.loginController, () {
      super.loginController = value;
    });
  }

  final _$senhaControllerAtom = Atom(name: 'ControllerBase.senhaController');

  @override
  String get senhaController {
    _$senhaControllerAtom.reportRead();
    return super.senhaController;
  }

  @override
  set senhaController(String value) {
    _$senhaControllerAtom.reportWrite(value, super.senhaController, () {
      super.senhaController = value;
    });
  }

  final _$isLoadingAtom = Atom(name: 'ControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$logarStoreAsyncAction = AsyncAction('ControllerBase.logarStore');

  @override
  Future<dynamic> logarStore() {
    return _$logarStoreAsyncAction.run(() => super.logarStore());
  }

  final _$ControllerBaseActionController =
      ActionController(name: 'ControllerBase');

  @override
  void setLogin(String value) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.setLogin');
    try {
      return super.setLogin(value);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loginController: ${loginController},
senhaController: ${senhaController},
isLoading: ${isLoading},
formIsValid: ${formIsValid}
    ''';
  }
}
