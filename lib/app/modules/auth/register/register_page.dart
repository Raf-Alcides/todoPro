import 'package:flutter/material.dart';
import 'package:todopro/app/core/ui/theme_extension.dart';
import 'package:todopro/app/core/widget/todo_field.dart';
import 'package:todopro/app/core/widget/todo_logo.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon:
              Icon(Icons.arrow_back_ios_outlined, color: context.primaryColor),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Cadastro',
          style: TextStyle(
              fontSize: 20,
              color: context.primaryColor,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width * .5,
            child: const FittedBox(
              fit: BoxFit.fitHeight,
              child: TodoLogo(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              child: Column(
                children: [
                  TodoField(label: 'Email'),
                  const SizedBox(height: 20),
                  TodoField(label: 'Senha', obscureText: true),
                  const SizedBox(height: 20),
                  TodoField(label: 'Confimar Senha', obscureText: true),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text('Login'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
