import 'package:flutter/material.dart';
import 'package:plink/core/theme/theme_provider.dart';

class DefaultSafeArea extends StatelessWidget {
  final Widget child;
  const DefaultSafeArea({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.only(top: ThemeProvider.appTitleHeight),
      child: child,
    );
  }
}
