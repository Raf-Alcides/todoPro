import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:todopro/app/core/widget/todo_field.dart';
import 'package:todopro/app/core/widget/todo_logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
                minWidth: constraints.maxWidth),
            child: IntrinsicHeight(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 10),
                  const TodoLogo(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 20,
                    ),
                    child: Form(
                      child: Column(
                        children: [
                          TodoField(label: 'E-mail'),
                          const SizedBox(height: 20),
                          TodoField(label: 'Senha', obscureText: true),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: const Text('Esqueceu sua Senha?'),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text('Login'),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xfff0f3f7),
                        border: Border(
                          top: BorderSide(
                            width: 2,
                            color: Colors.grey.withAlpha(50),
                          ),
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 30),
                          SignInButton(
                            Buttons.Google,
                            text: 'Continue com o Google',
                            padding: const EdgeInsets.all(5),
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none),
                            onPressed: () {},
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Não tem Conta?'),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pushNamed('/register'); 
                                  },
                                  child: const Text('Cadastra-se'))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
