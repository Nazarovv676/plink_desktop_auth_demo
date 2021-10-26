import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plink/feature/auth/bloc/auth_bloc.dart';
import 'package:plink/feature/widgets/default_safe_area.dart';
import 'package:qr_flutter/qr_flutter.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _renewQr(context);
    _timer = _newTimer(context);
  }

  Timer _newTimer(context) => Timer(
        const Duration(seconds: 50),
        () {
          _renewQr(context);
          _timer = _newTimer(context);
        },
      );

  void _renewQr(context) {
    BlocProvider.of<AuthBloc>(context).add(RenewQrAndSubscribeAuthEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultSafeArea(
        child: Center(
          child: Material(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox.square(
                dimension: 120,
                child: BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    if (state is QrUpdatingState) {
                      return const CircularProgressIndicator();
                    }
                    if (state is QrUpdatedState) {
                      return QrImage(data: state.qrData.slug);
                    }
                    return Text('Unknown state $state');
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
