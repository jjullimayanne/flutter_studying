import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ride4u_mobile/features/auth/usecases/authentication_usecase.dart';

class MockAuthenticationUseCase extends Mock implements AuthenticationUseCase {}

void main() {
  late MockAuthenticationUseCase mockAuthenticationUseCase;
  setUp(() {
    mockAuthenticationUseCase = MockAuthenticationUseCase();
  });
}
