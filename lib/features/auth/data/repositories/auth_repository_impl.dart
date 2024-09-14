import 'package:ride4u_mobile/core/local_storage/adapter/local_storage.dart';
import 'package:ride4u_mobile/core/network/adapter/network_adapter.dart';
import 'package:ride4u_mobile/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final LocalStorage localStorage;
  final HttpClient network;

  AuthRepositoryImpl({
    required this.localStorage,
    required this.network,
  });

  @override
  Future login(String email, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
