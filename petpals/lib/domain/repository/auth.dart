import 'package:petpals/data/models/auth/create_user_req.dart';

abstract class AuthRepository {
  Future<void> logIn(String email, String password);
  Future<void> register(CreateUserReq createUserReq);
}