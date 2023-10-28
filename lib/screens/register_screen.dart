import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trabalho_faculdade/enums/button_type_enum.dart';
import 'package:trabalho_faculdade/enums/colors_enum.dart';
import 'package:trabalho_faculdade/widgets/alert_widget.dart';
import 'package:trabalho_faculdade/widgets/gap.dart';
import 'package:trabalho_faculdade/widgets/h1_widget.dart';
import 'package:trabalho_faculdade/widgets/outline_button.dart';
import 'package:trabalho_faculdade/widgets/textfield_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => RegisterScreenState();
}

class RegisterScreenState extends State<RegisterScreen> {
  bool errorName = false;
  bool errorEmail = false;
  bool errorPassword = false;
  bool errorConfirmPassword = false;

  String name = '';
  String email = '';
  String password = '';
  String confirmPassword = '';
  String errorMessage = '';

  void _submit() {
    if(_validate()) {
      GoRouter.of(context).go('/home/$email');
    }else {
      CustomAlert.showAlert(context: context, text: errorMessage);
    }
  }

  bool _validate() {
    bool isValid = true;
    errorMessage = '';

    if(name.isEmpty) {
      errorMessage += '- Preencha o campo nome.';
      setState(() {
        errorName = true;
        isValid = false;
      });
    }

    if(email.isEmpty) {
      if(errorMessage.isEmpty) {
        errorMessage += '- Preencha o campo email.';
      }else {
        errorMessage += '\n- Preencha o campo email.';
      }
      
      setState(() {
        errorEmail = true;
        isValid = false;
      });
    }

    if(password.isEmpty) {
      if(errorMessage.isEmpty) {
        errorMessage += '- Preencha o campo senha.';
      }else {
        errorMessage += '\n- Preencha o campo senha.';
      }
        
      setState(() {
        errorPassword = true;
        isValid = false;
      });
    }

    if(confirmPassword.isEmpty) {
      if(errorMessage.isEmpty) {
        errorMessage += '- Preencha o campo confirmar senha.';
      }else {
        errorMessage += '\n- Preencha o campo confirmar senha.';
      }
        
      setState(() {
        errorConfirmPassword = true;
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
            const H1(text: 'Cadastro'),
            const Gap(),
            DefaultTextField(
              hintText: 'Digite seu nome',
              labelText: 'Nome:',
              error: errorName,
              onChange: (String value) async {
                setState(() {
                  errorName = false;
                  name = value;
                });
              },
            ),
            const Gap(),
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
            DefaultTextField(
              hintText: 'Digite sua senha',
              labelText: 'Confirme a senha:',
              type: 'password',
              error: errorConfirmPassword,
              onChange: (String value) async {
                setState(() {
                  errorConfirmPassword = false;
                  confirmPassword = value;
                });
              },
            ),
            const Gap(),
            OutlineButton(
              text: 'Cadastrar', 
              action: (){
                _submit();
              },
              rounded: true,
              buttonType: ButtonType.primary,
            ),
            TextButton(
              onPressed: () {
                GoRouter.of(context).pushReplacement('/login');
              }, 
              style: TextButton.styleFrom(
                foregroundColor: Color(ColorStyles.black.hexCode)// Text Color
              ),
              child: const Text(
                'Já possui uma conta? Faça o Login',
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