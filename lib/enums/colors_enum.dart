enum ColorStyles { 
  red(hexCode: 0xFFE52E4D), 
  black(hexCode: 0xFF000000),
  white(hexCode: 0xFFFFFFFF);

  const ColorStyles({required this.hexCode});

  final int hexCode;
}