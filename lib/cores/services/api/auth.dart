import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

// auth service provider
final authServiceProvider = Provider((ref) =>
    AuthService(auth: FirebaseAuth.instance, googleSignIn: GoogleSignIn()));

// auth service
class AuthService {
  // init params
  FirebaseAuth auth;
  GoogleSignIn googleSignIn;

  // set params
  AuthService({
    required this.auth,
    required this.googleSignIn,
  });

  // sign-in with google handler
  signInWithGoogle() async {
    // init user
    final user = await googleSignIn.signIn();
    // login google account
    final googleAuth = await user!.authentication;
    // get credentials
    final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
    // sign-in
    await auth.signInWithCredential(credential);
  }
}
