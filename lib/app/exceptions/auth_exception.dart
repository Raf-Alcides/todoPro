// ignore_for_file: public_member_api_docs, sort_constructors_first
class AuthException implements Exception {
  String massage;
  
  AuthException({
    required this.massage,
  });
}
