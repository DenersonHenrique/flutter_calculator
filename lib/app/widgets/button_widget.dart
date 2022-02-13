import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final bool big;
  final String text;
  final Color color;
  final void Function(String) callback;
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 150, 13, 1);

  const ButtonWidget({
    Key? key,
    required this.text,
    this.big = false,
    this.color = DEFAULT,
    required this.callback,
  }) : super(key: key);

  const ButtonWidget.big({
    Key? key,
    required this.text,
    this.big = true,
    this.color = DEFAULT,
    required this.callback,
  }) : super(key: key);

  const ButtonWidget.operation({
    Key? key,
    required this.text,
    this.big = false,
    this.color = OPERATION,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Expanded(
        flex: big ? 2 : 1,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: color,
          ),
          onPressed: () => callback(text),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w200,
            ),
          ),
        ),
      );
}
