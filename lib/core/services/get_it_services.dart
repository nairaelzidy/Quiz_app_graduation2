

import 'package:final_fruit_app/core/services/firebase_auth_service.dart';
import 'package:final_fruit_app/features/auth/data/repo/auth_repo_implementation.dart';
import 'package:final_fruit_app/features/auth/domain/repo/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetit() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImple(
      firebaseAuthService: getIt<FirebaseAuthService>(),
      
    ),
  );

 
}
