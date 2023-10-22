import 'package:flutter/material.dart';
import 'package:trabalho_faculdade/enums/colors_enum.dart';
import 'package:trabalho_faculdade/widgets/gap.dart';

class DefaultTextField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final String type;

  const DefaultTextField({
    Key? key,
    required this.hintText,
    this.type = 'text',
    this.labelText = '',
  }) : super(key: key);

  TextInputType getType() {
    if(type == 'email') {
      return TextInputType.emailAddress;
    } else if(type == 'number') {
      return TextInputType.number;
    }

    return TextInputType.text;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (labelText.isNotEmpty)
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              labelText, 
              style: const TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        const Gap(gapSize: 6,),
        SizedBox(
          height: 44,
          child: TextField(
            obscureText: type == 'password',
            keyboardType: getType(),
            textAlignVertical: TextAlignVertical.center,
            cursorColor: Color(ColorStyles.black.hexCode),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(10),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1, 
                  color: Color(ColorStyles.black.hexCode)
                ),
              ),
              border: const OutlineInputBorder(),
              hintText: hintText,
              labelStyle: TextStyle(
                color: Color(ColorStyles.black.hexCode)
              ),
            ),
            style: const TextStyle(fontSize: 16)
          ),
        )
      ],
    );
  }
}