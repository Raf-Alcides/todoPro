import 'package:provider/provider.dart';
import 'package:todopro/app/core/modules/todo_module.dart';
import 'package:todopro/app/modules/auth/login/login_controller.dart';
import 'package:todopro/app/modules/auth/login/login_page.dart';
import 'package:todopro/app/modules/auth/register/register_page.dart';

import 'register/register_controller.dart';

class AuthModule extends TodoModule{
  AuthModule() : super(
    routers: {
      '/login': (context) => const LoginPage(),
      '/register': (context) => const RegisterPage(),
    },
    bindings: [
      ChangeNotifierProvider(create: (_) => LoginController()),
      ChangeNotifierProvider(create: (_) => RegisterController()),
    ]
  );
  
}