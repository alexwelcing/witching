import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Sign up
  Future<UserCredential> signUp(String email, String password) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      // Send email verification
      return userCredential;
    } catch (e) {
      print("Failed to sign up: $e");
      throw Exception("Failed to sign up");
    }
  }

  // Log in
  Future<UserCredential> logIn(String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      print("Failed to log in: $e");
      throw Exception("Failed to log in");
    }
  }

  // Log out
  Future<void> logOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print("Failed to log out: $e");
      throw Exception("Failed to log out");
    }
  }

  // Password Recovery
  Future<void> recoverPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } catch (e) {
      print("Failed to recover password: $e");
      throw Exception("Failed to recover password");
    }
  }
}
