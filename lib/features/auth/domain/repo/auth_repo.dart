import 'package:dartz/dartz.dart';
import 'package:final_fruit_app/core/errors/failier_error.dart';
import 'package:final_fruit_app/features/auth/domain/entites/user_entitiy.dart';

abstract class AuthRepo {
  Future<Either<Failier,UserEntitiy>> createUserWithEmailAndPassword(
   String email,String password, String name,);

  }
