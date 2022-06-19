import 'package:flutter/material.dart';

class StoreButton extends StatefulWidget {
  StoreButton({Key? key, required this.child, required this.onPressed})
      : super(key: key);

  final Function()? onPressed;
  final Widget? child;
  Color? foregroundColor;
  Color? backgroundColor;
  TextStyle? textStyle;

  @override
  State<StoreButton> createState() => _StoreButtonState(onPressed, child);
}

class _StoreButtonState extends State<StoreButton> {
  _StoreButtonState(this.onPressed, this.child);

  final Function()? onPressed;
  final Widget? child;
  Color? foregroundColor;
  Color? backgroundColor;
  TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        primary: backgroundColor ?? Colors.blueGrey[600],
        onSurface: Colors.white,
        elevation: 0
      ),
      child: child ?? const Text('Button',
      style: TextStyle(
         fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
      )
      );
  }
}
