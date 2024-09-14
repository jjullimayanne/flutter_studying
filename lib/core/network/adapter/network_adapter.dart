import 'dart:async';

abstract class HttpClient {
  set baseUrl(String baseUrl);

  Future<T?> get<T>(
    String path, {
    Map<String, dynamic>? params,
    Map<String, String>? headers,
  });

  Future<T?> post<T>(
    String path, {
    dynamic data,
    bool needAuth = true,
    Map<String, String>? headers,
  });

  Future<T?> put<T>(
    String path, {
    dynamic data,
    Map<String, String>? headers,
  });

  Future<T?> delete<T>(
    String path, {
    Map<String, dynamic>? params,
    Map<String, String>? headers,
  });

  Future<T?> patch<T>(
    String path, {
    dynamic data,
    Map<String, String>? headers,
  });

  Future<T?> request<T>(
    String path,
    String method, {
    dynamic data,
    Map<String, dynamic>? params,
    Map<String, String>? headers,
    bool needAuth = true,
  });
}
