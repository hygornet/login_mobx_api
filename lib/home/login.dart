import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:formlogin/api/api_login.dart';
import 'package:formlogin/controller/controller.dart';
import 'package:formlogin/home/home_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _key = GlobalKey<FormState>();
  var mobx = Controller();
  String login = "";
  String senha = "";
  var loginControoller = TextEditingController();
  var senhaControoller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _key,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                _textFormField(mobx.setLogin, loginControoller),
                SizedBox(height: 5),
                _textFormField(mobx.setPassword, senhaControoller),
                SizedBox(height: 5),
                Observer(
                  builder: (_) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: mobx.formIsValid
                            ? () async {
                                bool logou = await mobx.logarStore();

                                if (logou) {
                                  Navigator.of(context)
                                      .pushReplacement(MaterialPageRoute(
                                    builder: (context) {
                                      return HomePage();
                                    },
                                  ));
                                } else {
                                  alert();
                                }
                              }
                            : null,
                        child: !mobx.isLoading
                            ? Text('Logar')
                            : CircularProgressIndicator(
                                color: Colors.white,
                              ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _textFormField(Function(String) onPressed, TextEditingController controller) {
    return TextFormField(
      controller: controller,
      onChanged: onPressed,
      decoration: InputDecoration(
        labelText: 'Senha',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  alert() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text('Usuário e/ou senha inválido.'),
            title: Text('Falha na operação'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: Text('OK')),
            ],
          );
        });
  }
}
