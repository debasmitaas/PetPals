import 'package:petpals/data/models/auth/create_user_req.dart';
import 'package:petpals/domain/repository/auth.dart';
import 'package:petpals/service_locator.dart';

class RegisterUseCase {
  Future<void> call(CreateUserReq createUserReq) async {
    return await sl<AuthRepository>().register(createUserReq);
  }
}