import 'package:flutter/material.dart';
import 'package:trabalho_faculdade/widgets/gap.dart';

class H1 extends StatelessWidget {
  const H1({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Gap(),
        Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32
          ),
        ),
        const Gap()
      ],
    );
  }
}