import 'package:ride4u_mobile/features/auth/domain/entities/account_entity.dart';

class RemoteAccountModel {
  final String token;
  RemoteAccountModel({
    required this.token,
  });

  factory RemoteAccountModel.fromJson(Map<String, dynamic> json) =>
      RemoteAccountModel(
        token: json['token'],
      );

  AccountEntity toEntity() => AccountEntity(token: token);
}
