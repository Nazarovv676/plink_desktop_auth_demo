import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plink/feature/auth/bloc/auth_bloc.dart';
import 'package:plink/feature/widgets/default_safe_area.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  String _data = 'initial';
  @override
  void initState() {
    super.initState();
    BlocProvider.of<AuthBloc>(context).add(RenewQrAndSubscribeAuthEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultSafeArea(
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            if (state is QrUpdatingState) {
              _data = 'Loading';
            }
            if (state is QrUpdatedState) {
              _data = state.qtData.slug;
            }
            return Text(_data);
          },
        ),
      ),
    );
  }
}
