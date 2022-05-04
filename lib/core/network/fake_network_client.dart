import 'package:flutter_arch_sample/core/network/index.dart';
import 'package:flutter_arch_sample/core/exceptions/index.dart';

class FakeNetworkClient implements NetworkClient {
  @override
  Future<T?> get<T>(
    String url, {
    Map<String, dynamic> queryParams = const {},
  }) async {
    try {
      await Future.delayed(const Duration(seconds: 2));

      // Returning null since its a fake client.
      return null;
    } catch (e) {
      throw AppException(message: e.toString());
    }
  }

  @override
  Future<T?> post<T>(
    String url, {
    Map<String, dynamic> body = const {},
    Map<String, dynamic> queryParams = const {},
  }) async {
    try {
      await Future.delayed(const Duration(seconds: 2));

      // Returning null since its a fake client.
      return null;
    } catch (e) {
      throw AppException(message: e.toString());
    }
  }
}
