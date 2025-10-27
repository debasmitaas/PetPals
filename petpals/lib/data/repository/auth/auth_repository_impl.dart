import 'package:petpals/data/models/auth/create_user_req.dart';
import 'package:petpals/data/sources/auth/auth_firebase.dart';
import 'package:petpals/domain/repository/auth.dart';
import 'package:petpals/service_locator.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<void> register(CreateUserReq createUserReq) async {
    await sl<AuthFirebaseService>().register(createUserReq);
  }

  @override
  Future<void> logIn(String email, String password) async {
    await sl<AuthFirebaseService>().logIn(email, password);
  }
}