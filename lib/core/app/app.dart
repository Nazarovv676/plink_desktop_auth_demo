import 'package:flutter/material.dart';
import 'package:plink/core/theme/theme_provider.dart';
import 'package:plink/feature/auth/auth_page.dart';
import 'package:plink/feature/window_frame/window_frame.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeProvider.dark,
      home: const WindowFrame(child: AuthPage()),
    );
  }
}
