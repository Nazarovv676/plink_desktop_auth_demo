import 'package:flutter/material.dart';
import 'package:plink/feature/widgets/default_safe_area.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DefaultSafeArea(
        child: Text('HI'),
      ),
    );
  }
}
