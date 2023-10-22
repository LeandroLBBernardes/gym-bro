import 'package:flutter/material.dart';
import 'package:trabalho_faculdade/enums/button_type_enum.dart';
import 'package:trabalho_faculdade/enums/colors_enum.dart';

class OutlineButton extends StatelessWidget {
  final String text;
  final Function() action;
  final ButtonType buttonType;
  final bool loading;
  final bool rounded;

  const OutlineButton({
    Key? key,
    required this.text,
    required this.action,
    this.buttonType = ButtonType.primary,
    this.loading = false,
    this.rounded = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sizedScreen = MediaQuery.of(context).size.width;

    return Column(
      children: [
        SizedBox(
          height: 44,
          width: sizedScreen,
          child: OutlinedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                BorderSide(
                  color: buttonType == ButtonType.secondary ? Color(ColorStyles.black.hexCode) : Color(buttonType.color.hexCode),
                  width: 2.5
                )
              ),
              backgroundColor: MaterialStatePropertyAll<Color>(
                Color(buttonType.color.hexCode)
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(rounded ? 60.0 : 5.0),
                )
              )
            ),
            onPressed: action, 
            child: loading 
              ? SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  color: buttonType != ButtonType.secondary ? Color(ColorStyles.white.hexCode) : Color(ColorStyles.black.hexCode),
                ),
              )
              : Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: buttonType != ButtonType.secondary ? Color(ColorStyles.white.hexCode) : Color(ColorStyles.black.hexCode)
                ),
              )
          ),
        ),
      ],
    );
  }
}
