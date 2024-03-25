import 'package:flutter/material.dart';

class SmallEquepmentHomeContainer extends StatelessWidget {
  const SmallEquepmentHomeContainer(
      {super.key,
      required this.color,
      required this.title,
      required this.value,
      required this.seconColor});
  final Color color;
  final Color seconColor;
  final String title;
  final int value;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width / 2.2,
      height: 80,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(title),
            CircleAvatar(
              radius: 10,
              backgroundColor: seconColor,
              child: Text(
                value.toString(),
                style: TextStyle(fontSize: 10),
              ),
            )
          ],
        ),
      ),
    );
  }
}
