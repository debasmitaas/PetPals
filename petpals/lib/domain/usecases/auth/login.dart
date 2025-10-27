import 'package:petpals/domain/repository/auth.dart';
import 'package:petpals/service_locator.dart';

class LoginUseCase {
  Future<void> call(String email, String password) async {
    return await sl<AuthRepository>().logIn(email, password);
  }
}