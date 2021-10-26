import 'package:flutter/material.dart';

import 'core/app/app.dart';
import 'core/configuration/configuration.dart' as config;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  config.init();

  runApp(const App());
}
