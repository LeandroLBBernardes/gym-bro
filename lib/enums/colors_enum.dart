enum ColorStyles { 
  red(hexCode: 0xFFE52E4D), 
  black(hexCode: 0xFF000000),
  green(hexCode: 0xFF18864B),
  white(hexCode: 0xFFFFFFFF);

  const ColorStyles({required this.hexCode});

  final int hexCode;
}