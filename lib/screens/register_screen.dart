import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trabalho_faculdade/enums/button_type_enum.dart';
import 'package:trabalho_faculdade/enums/colors_enum.dart';
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
            const DefaultTextField(
              hintText: 'Digite seu nome',
              labelText: 'Nome:',
            ),
            const Gap(),
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
            const DefaultTextField(
              hintText: 'Digite sua senha',
              labelText: 'Confirme a senha:',
              type: 'password'
            ),
            const Gap(),
            OutlineButton(
              text: 'Cadastrar', 
              action: (){},
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