// class that will hold all the firebase authentication logic
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  // create an instance of firebase auth
  FirebaseAuth auth = FirebaseAuth.instance;

  // firebase login
  // function, takes in a user email and password as parameters to log into firebase
  Future login(String email, String password) async {
    await auth.signInWithEmailAndPassword(email: email, password: password);
  }

  // firebase signup
  Future signUp(String email, String password) async {
    await auth.createUserWithEmailAndPassword(email: email, password: password);
  }
}
