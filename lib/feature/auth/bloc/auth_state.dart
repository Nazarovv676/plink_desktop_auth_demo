part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class QrUpdatingState extends AuthState {}

class QrUpdatedState extends AuthState {
  QrUpdatedState(this._qrData);

  final QrData _qrData;
  QrData get qrData => _qrData;
}
