import 'package:flutter/material.dart';
import 'package:trabalho_faculdade/widgets/h1_widget.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            H1(text: 'Gym Bro'),
            
          ],
        ),
      ),
    );
  }
}