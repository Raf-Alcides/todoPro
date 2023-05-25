import 'package:provider/provider.dart';
import 'package:todopro/app/core/modules/todo_module.dart';
import 'package:todopro/app/modules/auth/login/login_controller.dart';
import 'package:todopro/app/modules/auth/login/login_page.dart';

class AuthModule extends TodoModule{
  AuthModule() : super(
    routers: {
      '/login': (context) => const LoginPage()
    },
    bindings: [
      ChangeNotifierProvider(create: (_) => LoginController())
    ]
  );
  
}