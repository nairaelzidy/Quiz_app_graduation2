// import 'dart:math';

// import 'package:dartz/dartz.dart';
// import 'package:final_fruit_app/core/errors/failier_error.dart';
// import 'package:final_fruit_app/core/services/firebase_auth_service.dart';
// import 'package:final_fruit_app/features/auth/data/models/user_model.dart';
// import 'package:final_fruit_app/features/auth/domain/entites/user_entitiy.dart';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:final_fruit_app/core/errors/exception.dart';
import 'package:final_fruit_app/core/errors/failier_error.dart';
import 'package:final_fruit_app/core/services/firebase_auth_service.dart';
import 'package:final_fruit_app/features/auth/data/models/user_model.dart';
import 'package:final_fruit_app/features/auth/domain/entites/user_entitiy.dart';
import 'package:final_fruit_app/features/auth/domain/repo/auth_repo.dart';

class AuthRepoImple extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImple({required this.firebaseAuthService});

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
          email: email, password: password);
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log("Exception in createUserWithEmailAndPassword:${e.toString()}");
      return left(
        ServerFailure("An error occurred. please try again later."));
    }

  }
  
   @override
  Future<Either<Failure, UserEntity>> signinWithEmailAndPassword(
      String email, String password) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
          email: email, password: password);
      // var userEntity = await getUserData(uid: user.uid);
      // await saveUserData(user: userEntity);
      return right(
        UserModel.fromFirebaseUser(user),
      );
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log(
        'Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}',
      );
      return left(
        ServerFailure(
          'An error occurred. please try again later.',
        ),
      );
    }
  }



}
