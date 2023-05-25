import 'package:sqflite/sqflite.dart';
import 'package:todopro/app/core/databese/migrations/migration.dart';

class MigrationV2 implements Migration{
  @override
  void create(Batch batch) {
    batch.execute('create table teste 2(id integer)');
  }

  @override
  void update(Batch batch) {
    batch.execute('create table teste 2(id integer)');
  }
  
}