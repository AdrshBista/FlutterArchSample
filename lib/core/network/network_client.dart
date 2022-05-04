abstract class NetworkClient {
  /// Returns decoded JSON of type [T] when successful.
  /// Throws [NetworkException] in case of any error.
  Future<T?> get<T>(
    String url, {
    Map<String, dynamic> queryParams,
  });

  /// Returns decoded JSON of type [T] when successful.
  /// Throws [NetworkException] in case of any error.
  Future<T?> post<T>(
    String url, {
    Map<String, dynamic> body,
    Map<String, dynamic> queryParams,
  });
}
