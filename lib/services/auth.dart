import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:dsc/models/MyUser.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();


  Myuser _userFromFirebaseUser (User user){
    return user!=null ? Myuser(displayPic: user.photoURL,name: user.displayName , uid: user.uid) : null;
  }

  //auth change user streams
  Stream<Myuser> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }
  //sign out
  Future signOut() async {
    return await _auth.signOut();
  }

  Future signInWithGoogle() async {

    try {
      final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    final UserCredential authResult =
        await _auth.signInWithCredential(credential);
    final User user = authResult.user;

    if (user != null) {
      assert(user.email != null);
      assert(user.displayName != null);
      assert(!user.isAnonymous);
      assert(await user.getIdToken() != null);

      final User currentUser = _auth.currentUser;
      return _userFromFirebaseUser(currentUser);
     }
    } catch(e){
      print(e.toString());
      return null;
    }
  }

  Future signOutGoogle() async {
    await googleSignIn.signOut();

    print("User Signed out");
  }

}
