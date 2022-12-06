import 'package:flutter/material.dart';

class ContainerColor extends StatelessWidget {
  final Color color;
  final String value;

  const ContainerColor({super.key, required this.value, required this.color});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      width: 100,
      height: 100,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              value,
              style: textTheme.bodyText1,
            ),
            Text(
              '#${color.value.toRadixString(16).padLeft(8, '0')}',
              style: textTheme.bodyText1,
            )
          ],
        ),
      ),
    );
  }
}
