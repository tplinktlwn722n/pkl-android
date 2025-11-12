import 'package:flutter/material.dart';

import 'package:flutter_todo/styles/styles.dart';

class StyledFlatButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double? radius;

  const StyledFlatButton(this.text, {this.onPressed, Key? key, this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue[500],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 4.0),
          side: BorderSide(
            color: Colors.blue[500]!,
            width: 2,
          ),
        ),
      ),
      onPressed: onPressed != null
          ? () {
              onPressed!();
            }
          : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0),
        child: Text(
          text,
          style: Styles.p.copyWith(
            color: Colors.white,
            height: 1,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
