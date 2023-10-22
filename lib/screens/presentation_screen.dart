import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trabalho_faculdade/enums/button_type_enum.dart';
import 'package:trabalho_faculdade/widgets/gap.dart';
import 'package:trabalho_faculdade/widgets/h1_widget.dart';
import 'package:trabalho_faculdade/widgets/outline_button.dart';

class PresentationScreen extends StatefulWidget {
  const PresentationScreen({Key? key}) : super(key: key);

  @override
  State<PresentationScreen> createState() => PresentationScreenState();
}

class PresentationScreenState extends State<PresentationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                    width: MediaQuery.of(context).size.width*0.34,
                  ),
                  const H1(text: 'Gym Bro'),
                  const Text(
                    'Ache seu parceiro!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              )
            ),
            OutlineButton(
              text: 'Login', 
              action: () {
                GoRouter.of(context).push('/login');
              },
              rounded: true,
              buttonType: ButtonType.primary,
            ),
            const Gap(),
            OutlineButton(
              text: 'Cadastro', 
              action: () {
                GoRouter.of(context).push('/register');
              },
              rounded: true,
              buttonType: ButtonType.secondary,
            )
          ],
        ),
      ),
    );
  }
}