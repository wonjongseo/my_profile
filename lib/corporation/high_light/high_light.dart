import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeighLight extends StatelessWidget {
  const HeighLight({
    Key? key,
    required this.counter,
    required this.label,
  }) : super(key: key);

  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        const SizedBox(width: 20 / 2),
        Text(
          label!,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}
