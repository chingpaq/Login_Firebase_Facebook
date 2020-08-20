import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<bool> isUserLoggedIn() async {
    var user = await _firebaseAuth.currentUser();
    return user != null;
  }
  Future <bool> signOutUser()  async{
    await FirebaseAuth.instance.signOut();
    var user = await _firebaseAuth.currentUser();
    return user != null;
  }
}
