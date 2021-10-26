import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:plink/core/theme/theme_provider.dart';
import 'package:plink/feature/widgets/close_button.dart';
import 'package:plink/feature/widgets/logo.dart';

class WindowFrame extends StatelessWidget {
  final Widget child;
  const WindowFrame({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback(
      (_) => _insertFrameOverlay(context),
    );
    return WindowBorder(
      color: Theme.of(context).colorScheme.secondary,
      width: 1,
      child: MediaQuery(
        data: MediaQuery.of(context).copyWith(
          viewInsets: EdgeInsets.only(top: ThemeProvider.appTitleHeight),
        ),
        child: child,
      ),
    );
  }

  void _insertFrameOverlay(BuildContext context) {
    return Overlay.of(context)!.insert(
      OverlayEntry(builder: (context) {
        final width = MediaQuery.of(context).size.width;
        return Positioned(
          height: ThemeProvider.appTitleHeight,
          width: width,
          child: Material(
            color: Theme.of(context).colorScheme.secondary,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: MoveWindow(
                      child: const AppLogo(),
                    ),
                  ),
                  const AppCloseButton(),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
