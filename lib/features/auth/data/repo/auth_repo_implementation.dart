// import 'dart:math';

// import 'package:dartz/dartz.dart';
// import 'package:final_fruit_app/core/errors/failier_error.dart';
// import 'package:final_fruit_app/core/services/firebase_auth_service.dart';
// import 'package:final_fruit_app/features/auth/data/models/user_model.dart';
// import 'package:final_fruit_app/features/auth/domain/entites/user_entitiy.dart';
// import 'package:final_fruit_app/features/auth/domain/repo/auth_repo.dart';

// class AuthRepoImple extends AuthRepo {
//   final FirebaseAuthService firebaseAuthService;

//   AuthRepoImple({required this.firebaseAuthService});
//   @override
//   Future<Either<Failier, UserEntitiy>> createUserWithEmailAndPassword(
//     String email,String password,String name ) async{
//   var user= await firebaseAuthService.createUserWithEmailAndPassword(email: email,password: password);
//       return right(
//         UserModel.fromFirebaseUser(user),
//       );
    
//   }
// }
