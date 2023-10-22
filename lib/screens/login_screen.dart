import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trabalho_faculdade/enums/button_type_enum.dart';
import 'package:trabalho_faculdade/enums/colors_enum.dart';
import 'package:trabalho_faculdade/widgets/alert_widget.dart';
import 'package:trabalho_faculdade/widgets/gap.dart';
import 'package:trabalho_faculdade/widgets/h1_widget.dart';
import 'package:trabalho_faculdade/widgets/outline_button.dart';
import 'package:trabalho_faculdade/widgets/textfield_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  bool errorEmail = false;
  bool errorPassword = false;

  String email = '';
  String password = '';
  String errorMessage = '';

  void _submit() {
    if(_validate()) {
      GoRouter.of(context).go('/home');
    }else {
      CustomAlert.showAlert(context: context, text: errorMessage);
    }
  }

  bool _validate() {
    bool isValid = true;
    errorMessage = '';

    if(email.isEmpty) {
      errorMessage += '- Preencha o campo email.';
      setState(() {
        errorEmail = true;
        isValid = false;
      });
    }

    if(password.isEmpty) {
      errorMessage += '\n- Preencha o campo senha.';
      setState(() {
        errorPassword = true;
        isValid = false;
      });
    }

    return isValid;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const H1(text: 'Login'),
            DefaultTextField(
              hintText: 'Digite seu email',
              labelText: 'Email:',
              type: 'email',
              error: errorEmail,
              onChange: (String value) async {
                setState(() {
                  errorEmail = false;
                  email = value;
                });
              },
            ),
            const Gap(),
            DefaultTextField(
              hintText: 'Digite sua senha',
              labelText: 'Senha:',
              type: 'password',
              error: errorPassword,
              onChange: (String value) async {
                setState(() {
                  errorPassword = false;
                  password = value;
                });
              },
            ),
            const Gap(),
            OutlineButton(
              text: 'Login', 
              action: (){
                _submit();
              },
              rounded: true,
              buttonType: ButtonType.primary,
            ),
            TextButton(
              onPressed: () {
                GoRouter.of(context).pushReplacement('/register');
              }, 
              style: TextButton.styleFrom(
                foregroundColor: Color(ColorStyles.black.hexCode)// Text Color
              ),
              child: const Text(
                'Cadastre-se',
                style: TextStyle(
                  fontSize: 15
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}