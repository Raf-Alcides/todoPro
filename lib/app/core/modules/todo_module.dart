
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:nested/nested.dart';
import 'package:todopro/app/core/modules/todo_page.dart';


abstract class TodoModule {
  final Map<String, WidgetBuilder> _routers;
  final List<SingleChildWidget>? _bindings;

  TodoModule({
    required Map<String, WidgetBuilder> routers,
    List<SingleChildWidget>? bindings
  }) : _routers = routers, _bindings = bindings;

  Map<String, WidgetBuilder> get routers {
    return _routers.map((key, pageBuilder) => MapEntry(key, (_) => TodoPage(
      bindings: _bindings,
      page: pageBuilder,
    )));
  }
}