import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final IconData iconData;
  final String name;
  final Color color;

  const TextButtonWidget(
      {Key? key,
      required this.color,
      required this.iconData,
      required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Row(
        children: [
          Icon(
            iconData,
            color: color,
          ),
          Text(name),
        ],
      ),
    );
  }
}
