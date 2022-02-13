import 'button_widget.dart';
import 'package:flutter/material.dart';

class ButtonRowWidget extends StatelessWidget {
  final List<ButtonWidget> buttons;

  const ButtonRowWidget({
    Key? key,
    required this.buttons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold(
          <Widget>[],
          (list, button) {
            list.isEmpty
                ? list.add(button)
                : list.addAll(
                    [
                      const SizedBox(width: 1),
                      button,
                    ],
                  );

            return list;
          },
        ),
      ),
    );
  }
}
