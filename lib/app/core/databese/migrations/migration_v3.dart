
import 'package:sqflite/sqflite.dart';
import 'package:todopro/app/core/databese/migrations/migration.dart';

class MigrationV3 implements Migration{
  @override
  void create(Batch batch) {
    batch.execute('create table teste 3(id integer)');
  }

  @override
  void update(Batch batch) {
    batch.execute('create table teste 3(id integer)');
  }
  
}