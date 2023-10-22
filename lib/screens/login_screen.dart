import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trabalho_faculdade/enums/button_type_enum.dart';
import 'package:trabalho_faculdade/enums/colors_enum.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const H1(text: 'Login'),
            const DefaultTextField(
              hintText: 'Digite seu email',
              labelText: 'Email:',
              type: 'email',
            ),
            const Gap(),
            const DefaultTextField(
              hintText: 'Digite sua senha',
              labelText: 'Senha:',
              type: 'password',
            ),
            const Gap(),
            OutlineButton(
              text: 'Login', 
              action: (){},
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