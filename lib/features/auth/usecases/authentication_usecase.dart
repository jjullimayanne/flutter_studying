import 'package:ride4u_mobile/features/auth/domain/entities/account_entity.dart';

abstract class AuthenticationUseCase {
  Future<AccountEntity> auth({
    required String email,
    required String password,
  });
}
