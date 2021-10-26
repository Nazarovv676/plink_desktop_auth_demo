import 'dart:convert';
import 'dart:developer';

import 'package:plink/data/auth/qr_data.dart';
import 'package:plink/domain/auth_repository.dart';
import 'package:http/http.dart' as http;
import 'package:plink/core/configuration/configuration.dart' as config;

class AuthRepositoryImpl extends AuthRepository {
  final _httpsPrefix = 'https:';
  @override
  Future<QrData> renewQrData() async {
    final response = await http.post(Uri.parse(
        '$_httpsPrefix//${config.devDomain}/qrcode_authentications/'));

    if (response.statusCode == 201) {
      final body = jsonDecode(response.body) as Map<String, dynamic>;
      return QrData(key: body['key']!, slug: body['slug']!);
    }

    throw RenewQrError();
  }

  @override
  Future<void> subscribeToAuth(String slug) {
    // TODO: implement subscribeToAuth
    throw UnimplementedError();
  }
}

class RenewQrError {}
