abstract class Network {
  Future<T?> get<T>(
    String path, {
    Map<String, dynamic>? params,
    bool hideInfoTracking = false,
  });

  Future<T?> post<T>(
    String path, {
    dynamic data,
    bool hideInfoTracking = false,
    Function(int, int)? onSendProgress,
    bool needAuth = true,
  });

  Future<T?> put<T>(
    String path, {
    dynamic data,
    bool hideInfoTracking = false,
  });

  Future<T?> delete<T>(
    String path, {
    Map<String, dynamic>? params,
    bool hideInfoTracking = false,
  });

  Future<T?> patch<T>(
    String path, {
    dynamic data,
    bool hideInfoTracking = false,
    Function(int, int)? onSendProgress,
    Function(int, int)? onReceiveProgress,
  });

  Future<T?> request<T>(
    String path,
    String method, {
    dynamic data,
    Map<String, dynamic>? params,
    bool hideInfoTracking = false,
    Function(int, int)? onSendProgress,
    Function(int, int)? onReceiveProgress,
    bool needAuth,
  });

  set baseUrl(String baseUrl);
}
