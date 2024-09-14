import 'dart:async';

abstract class HttpClient {
  Future<T?> get<T>(
    String path, {
    Map<String, dynamic>? params,
    bool hideInfoTracking = false,
    Map<String, String>? headers,
  });

  Future<T?> post<T>(
    String path, {
    dynamic data,
    bool hideInfoTracking = false,
    Function(int, int)? onSendProgress,
    bool needAuth = true,
    Map<String, String>? headers,
  });

  Future<T?> put<T>(
    String path, {
    dynamic data,
    bool hideInfoTracking = false,
    Map<String, String>? headers,
  });

  Future<T?> delete<T>(
    String path, {
    Map<String, dynamic>? params,
    bool hideInfoTracking = false,
    Map<String, String>? headers,
  });

  Future<T?> patch<T>(
    String path, {
    dynamic data,
    bool hideInfoTracking = false,
    Function(int, int)? onSendProgress,
    Function(int, int)? onReceiveProgress,
    Map<String, String>? headers,
  });

  Future<T?> request<T>(
    String path,
    String method, {
    dynamic data,
    Map<String, dynamic>? params,
    bool hideInfoTracking = false,
    Function(int, int)? onSendProgress,
    Function(int, int)? onReceiveProgress,
    Map<String, String>? headers,
    bool needAuth = true,
  });

  set baseUrl(String baseUrl);

  void addDefaultHeader(String key, String value);
}
