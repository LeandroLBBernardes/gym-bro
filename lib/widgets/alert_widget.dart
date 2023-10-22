import 'package:flutter/material.dart';
import 'package:trabalho_faculdade/enums/colors_enum.dart';

class CustomAlert {
  static void showAlert({
    required BuildContext context,
    required String text,
    String type = 'fail'
  }) {
    FocusScope.of(context).unfocus();
    ScaffoldMessenger.of(context).showSnackBar(
      _snackBar(type, text, context)
    );
  }

  static SnackBar _snackBar(String type, String text, BuildContext context) {
    return SnackBar(
      content: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: type == 'fail' ? Color(ColorStyles.red.hexCode) : Color(ColorStyles.green.hexCode),
          borderRadius: const BorderRadius.all(Radius.circular(20))
        ),
        child: Row(
          
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style:  TextStyle(
                      fontSize: 16,
                      color: Color(ColorStyles.white.hexCode)
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: IconButton(
                icon: Icon(
                  Icons.close,
                  color: Color(ColorStyles.white.hexCode),
                  size: 24,
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
              ),
            )
          ],
        )
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}