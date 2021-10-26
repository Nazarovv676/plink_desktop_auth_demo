import 'package:equatable/equatable.dart';

class QrData extends Equatable {
  const QrData({required this.key, required this.slug});

  final String key;
  final String slug;

  @override
  List<Object?> get props => [
        key,
        slug,
      ];
}
