import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plink/feature/auth/auth_page.dart';
import 'package:plink/feature/auth/auth_repository.dart';
import 'package:plink/feature/auth/bloc/auth_bloc.dart';
import 'package:plink/feature/widgets/bloc_utils/page_provider.dart';

class AuthPageProvider extends StatelessWidget {
  const AuthPageProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthBloc(AuthRepositoryImpl()),
      child: const AuthPage(),
    );
  }
}
