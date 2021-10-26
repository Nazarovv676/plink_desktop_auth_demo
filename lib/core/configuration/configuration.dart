import 'dart:ui';

import 'package:desktop_window/desktop_window.dart';

Future<void> init() async {
  await DesktopWindow.setMinWindowSize(const Size(400, 400));
  await DesktopWindow.setWindowSize(_defaultWindowSize);
}

Size get _defaultWindowSize => const Size(400, 720);

String get devDomain => 'desktop.plink.tech';
