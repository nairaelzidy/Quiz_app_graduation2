import 'dart:developer';

import 'package:final_fruit_app/core/errors/exception.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("Exception in AuthRepoImple.FirebaseAuthService.createUserWithEmailAndPassword:${e.toString()} and e.code is ${e.code}");
      if (e.code == 'weak-password') {
        throw CustomException(message: "The password provided is too weak");
      } else if (e.code == 'email-already-in-use') {
        throw Exception("The account already exists for that email");
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'Make sure you are connected to the internet');
      } 
      else {
        throw Exception("An error occurred. please try again later.");
      }
    } catch (e) {
      log("Exception in AuthRepoImple.FirebaseAuthService.createUserWithEmailAndPassword:${e.toString()}");
      throw Exception("An error occurred. please try again later.");
    }
  }
   Future<User> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("Exception in FirebaseAuthService.signInWithEmailAndPassword: ${e.toString()} and code is ${e.code}");
      if (e.code == 'user-not-found') {
        throw CustomException(
            message: 'The password or email is not found');
      } else if (e.code == 'wrong-password') {
        throw CustomException(
            message: 'The password  is incorrect');
      } else if (e.code == 'invalid-credential') {
        throw CustomException(
            message: 'The password or email is incorrect');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'Make sure you are connected to the internet');
      } else {
        throw CustomException(
            message: 'لقد حدث خطأ ما. الرجاء المحاولة مرة اخرى.');
      }
    } catch (e) {
      log("Exception in FirebaseAuthService.signInWithEmailAndPassword: ${e.toString()}");

      throw CustomException(
          message: 'An error occurred. please try again later.');
    }
  }
}
