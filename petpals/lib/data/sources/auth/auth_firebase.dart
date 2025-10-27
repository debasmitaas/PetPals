import 'package:firebase_auth/firebase_auth.dart';
import 'package:petpals/data/models/auth/create_user_req.dart';

abstract class AuthFirebaseService {
  Future<void> register(CreateUserReq createUserReq);
  Future<void> logIn(String email, String password);
}

class AuthFirebaseServiceImpl implements AuthFirebaseService {
  @override
  Future<void> register(CreateUserReq createUserReq) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: createUserReq.email,
        password: createUserReq.password,
      );
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message);
    }
  }

  @override
  Future<void> logIn(String email, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message);
    }
  }
}