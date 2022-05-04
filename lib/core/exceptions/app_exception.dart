import 'package:flutter_arch_sample/core/constants/index.dart';

class AppException implements Exception {
  final String message;

  const AppException({
    this.message = ErrorMessages.general,
  });

  @override
  String toString() => message;
}
