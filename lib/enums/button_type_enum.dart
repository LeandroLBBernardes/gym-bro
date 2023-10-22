import 'package:trabalho_faculdade/enums/colors_enum.dart';

enum ButtonType {
  primary(color: ColorStyles.black),
  secondary(color: ColorStyles.white),
  danger(color: ColorStyles.red);

  const ButtonType({required this.color});

  final ColorStyles color;
}