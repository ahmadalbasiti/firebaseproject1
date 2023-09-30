import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthController {

  FirebaseAuth firebaseAuth =FirebaseAuth.instance;
//sign up

void signUp({required String email ,required String password}){
// نعمل انشاء حساب auth ن طريق ال
// باستخدام البريد وكلمة المرور

  firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);

}


}