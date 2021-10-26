import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:plink/core/assets/assets.dart';

class AppCloseButton extends StatelessWidget {
  const AppCloseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: appWindow.close,
      child: Image(image: closeImage),
    );
  }
}
