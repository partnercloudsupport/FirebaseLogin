import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth auth =FirebaseAuth.instance;
GoogleSignIn googleSignIn = new GoogleSignIn();

Future<FirebaseUser> googleSiginIn() async{
  GoogleSignInAccount account = await googleSignIn.signIn();
  GoogleSignInAuthentication gsa = await account.authentication;

  FirebaseUser user = await auth.signInWithGoogle(
    accessToken: gsa.accessToken,
    idToken: gsa.idToken
  );

  return user;

}