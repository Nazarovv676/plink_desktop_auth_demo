import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:plink/data/auth/qr_data.dart';
import 'package:plink/domain/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  AuthBloc(this._authRepository) : super(AuthInitial()) {
    on<RenewQrAndSubscribeAuthEvent>((event, emit) async {
      emit(QrUpdatingState());
      final qrData = await _authRepository.renewQrData();
      emit(QrUpdatedState(qrData));
    });
  }
}
