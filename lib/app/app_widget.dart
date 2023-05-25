import 'package:flutter/material.dart';
import 'package:todopro/app/core/databese/sqlite_adm_connection.dart';

class AppWidget extends StatefulWidget {

  const AppWidget({ Key? key }) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {

  var sqliteAdmConnection = SqliteAdmConnection();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(sqliteAdmConnection);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(sqliteAdmConnection);
    super.dispose();
  }


   @override
   Widget build(BuildContext context) {
       return const MaterialApp(
        title: 'to_do Pro',
       );
  }
}