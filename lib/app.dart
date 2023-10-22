import 'package:flutter/material.dart';
import 'package:trabalho_faculdade/enums/colors_enum.dart';
import 'package:trabalho_faculdade/routes/routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: MaterialApp.router(
        title: 'Gym Bro',

        theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Color(ColorStyles.black.hexCode)
          ),
          scaffoldBackgroundColor: Color(ColorStyles.white.hexCode),
          fontFamily: 'Roboto',
          textTheme: TextTheme(
            bodyMedium: TextStyle(
              color: Color(ColorStyles.black.hexCode),
            )
          ),
        ),

        debugShowCheckedModeBanner: false,
        routerConfig: routes
      ),
    );
  }
}