import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({
    Key? key,
    required this.text,
    required this.value,
  }) : super(key: key);
  final String text;
  final int value;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value),
      duration: Duration(seconds: 1),
      builder: (context, value, child) => Text(
        text + value.toString(),
        style: Theme.of(context).textTheme.titleLarge!,
      ),
    );
  }
}
