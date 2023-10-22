import 'package:flutter/material.dart';
import 'package:trabalho_faculdade/enums/button_type_enum.dart';
import 'package:trabalho_faculdade/widgets/gap.dart';
import 'package:trabalho_faculdade/widgets/h1_widget.dart';
import 'package:trabalho_faculdade/widgets/outline_button.dart';

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
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: const AssetImage('assets/musculos_512_raw.png'), 
                    width: MediaQuery.of(context).size.width*0.32,
                  ),
                  const H1(text: 'Gym Bro'),
                  const Text(
                    'Ache seu parceiro!',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              )
            ),
            OutlineButton(
              text: 'Login', 
              action: (){},
              rounded: true,
              buttonType: ButtonType.primary,
            ),
            const Gap(),
            OutlineButton(
              text: 'Cadastre-se', 
              action: (){},
              rounded: true,
              buttonType: ButtonType.secondary,
            )
          ],
        ),
      ),
    );
  }
}