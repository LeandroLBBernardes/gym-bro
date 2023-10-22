import 'package:flutter/widgets.dart';

class Gap extends StatelessWidget {
  const Gap({
    Key? key,
    this.gapSize = 16
  }) : super(key: key);

  final double gapSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: gapSize);
  } 
}