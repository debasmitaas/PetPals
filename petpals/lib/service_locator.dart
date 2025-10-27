import 'package:get_it/get_it.dart';
import 'package:petpals/data/repository/auth/auth_repository_impl.dart';
import 'package:petpals/data/sources/auth/auth_firebase.dart';
import 'package:petpals/domain/repository/auth.dart';
import 'package:petpals/domain/usecases/auth/login.dart';
import 'package:petpals/domain/usecases/auth/register.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Services
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());
  
  // Repositories
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());
  
  // UseCases
  sl.registerSingleton<RegisterUseCase>(RegisterUseCase());
  sl.registerSingleton<LoginUseCase>(LoginUseCase());
}