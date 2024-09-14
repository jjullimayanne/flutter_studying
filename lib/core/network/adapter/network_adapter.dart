import 'dart:async';

abstract class HttpClient {
  set baseUrl(String baseUrl);

  Future<T?> get<T>({
    required String path,
    Map<String, dynamic>? params,
    Map<String, String>? headers,
  });

  Future<T?> post<T>({
    required String path,
    dynamic data,
    bool needAuth = true,
    Map<String, String>? headers,
  });

  Future<T?> put<T>({
    required String path,
    dynamic data,
    Map<String, String>? headers,
  });

  Future<T?> delete<T>({
    required String path,
    Map<String, dynamic>? params,
    Map<String, String>? headers,
  });

  Future<T?> patch<T>({
    required String path,
    dynamic data,
    Map<String, String>? headers,
  });

  Future<T?> request<T>({
    required String path,
    required String method,
    dynamic data,
    Map<String, dynamic>? params,
    Map<String, String>? headers,
    bool needAuth = true,
  });
}
