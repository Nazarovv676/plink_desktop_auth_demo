import 'package:plink/data/auth/qr_data.dart';

abstract class AuthRepository {
  Future<QrData> renewQrData();

  Future<void> subscribeToAuth(String slug);
}
