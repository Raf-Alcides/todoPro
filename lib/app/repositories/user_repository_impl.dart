// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';

import '../exceptions/auth_exception.dart';
import './user_repository.dart';

class UserRepositoryImpl implements UserRepository {

  final FirebaseAuth _firebaseAuth;

  UserRepositoryImpl({
    required FirebaseAuth firebaseAuth
  }) : _firebaseAuth = firebaseAuth;

  @override
  Future<User?> register(String email, String password) async {
    try {
  final userCredencial = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
  return userCredencial.user;
} on FirebaseAuthException catch (e, s) {
  print(e);
  print(s);
  if(e.code == 'email-already-in-use') {
    final loginTypes = await _firebaseAuth.fetchSignInMethodsForEmail(email);
    if(loginTypes.contains('password')) {
      throw AuthException(massage: 'Email ja cadastrado, por favor informe um E-mail diferente');
    } else {
      throw AuthException(massage: 'Conta vinculada pelo o google, Por favor entra com a sua conta google');
    }
  } else {
    throw AuthException(massage: e.message ?? 'Erro ao registra Usuario, tente novamente mais tarde!!!');
  }


}
  }

}
