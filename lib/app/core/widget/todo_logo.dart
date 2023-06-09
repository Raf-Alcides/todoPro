import 'package:flutter/material.dart';
import 'package:todopro/app/core/ui/theme_extension.dart';

class TodoLogo extends StatelessWidget {

  const TodoLogo({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/logo.png', height: 200,),
          Text('Todo Pro', style: context.textTheme.titleLarge) 
        ],
       );
  }
}