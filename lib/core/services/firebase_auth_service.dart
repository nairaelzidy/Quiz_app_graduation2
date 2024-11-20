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
      if (e.code == 'weak-password') {
        throw CustomException(message: "The password provided is too weak");
      } else if (e.code == 'email-already-in-use') {
        throw Exception("The account already exists for that email");
      } else {
        throw Exception("An error occurred. please try again later.");
      }
    } catch (e) {
      throw Exception("An error occurred. please try again later.");
    }
  }
}
