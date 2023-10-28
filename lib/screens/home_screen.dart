import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trabalho_faculdade/enums/button_type_enum.dart';
import 'package:trabalho_faculdade/widgets/h1_widget.dart';
import 'package:trabalho_faculdade/widgets/h3_widget.dart';
import 'package:trabalho_faculdade/widgets/outline_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.email}) : super(key: key);

  final String email;

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  var loading = false;

  void showLoading() {
    setState(() {
      loading = true;
    });
    backInit();
  }

  void backInit() async {
    await Future.delayed(const Duration(seconds: 1));
    GoRouter.of(context).go('/');
  }

  @override
  Widget build(BuildContext context) {
    var userEmail = widget.email;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const H1(text: 'Olá, Usuário!'),
                  H3(text: 'Email: $userEmail')
                ],
              )
            ),
            OutlineButton(
              text: 'Sair', 
              action: showLoading,
              loading: loading,
              rounded: true,
              buttonType: ButtonType.danger,
            ),
          ],
        ),
      ),
    );
  }
}