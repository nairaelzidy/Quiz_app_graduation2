import 'package:dartz/dartz.dart';
import 'package:final_fruit_app/core/errors/failier_error.dart';
import 'package:final_fruit_app/features/auth/domain/entites/user_entitiy.dart';

abstract class AuthRepo {
  Future<Either<Failure,UserEntity>> createUserWithEmailAndPassword(
   String email,String password, String name,);


  Future<Either<Failure, UserEntity>> signinWithEmailAndPassword(
      String email, String password);

  //Future<Either<Failure, UserEntity>> signinWithGoogle();

  }
