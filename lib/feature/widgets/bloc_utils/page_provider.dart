import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageProvider extends StatelessWidget {
  final List<Bloc> provideBlocs;
  final Widget child;

  const PageProvider({
    Key? key,
    this.provideBlocs = const [],
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        ...provideBlocs.map((e) => BlocProvider(create: (context) => e))
      ],
      child: child,
    );
  }
}
