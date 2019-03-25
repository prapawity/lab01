import 'package:sqflite/sqflite.dart';

final String todoTable = "todo";
final String columnId = "_id";
final String columnTitle = "title";
final String columnDone = "done";
class Todo{
  int id;
  String title;
  bool done;

  Todo();

  Todo.formMap(Map<String,dynamic> map){
    this.id = map[columnId];
    this.title = map[columnTitle];
    this.done = map[columnDone];
  }
  Map<String, dynamic> toMap(){
    Map<String, dynamic> map = {
      columnTitle:title,
      columnDone: done == true ? 1:0 
    };

    if(id !=null){
      map[columnId] = id;
    }
    return map;
  }
}

class TodoProvider {
  Database db;

  Future open(String path) async {
    db = await openDatabase(path,version:1,onCreate:(Database db, int version) async{
      await db.execute('''create table $todoTable(
        $columnId INTEGER primary key autoincrement,
        $columnTitle text not null,
        $columnDone INTEGER not null
      )''');
    });
  }

  Future<Todo> insert(Todo todo) async{
    todo.id = await db.insert(todoTable, todo.toMap());
    return todo;
  }

  Future<Todo> getTodo(int id) async{
    List<Map<String, dynamic>> maps = await db.query(todoTable,columns: [columnId,columnDone,columnTitle],
    where: '$columnId = ?',
    whereArgs: [id]);
    if (maps.length > 0) {
      return new Todo.formMap(maps.first);
    }
    else{
      return null;
    }
  }
  Future<int> delete(int id) async{
    return db.delete(todoTable,where:'$columnId = ?',whereArgs: [id]);

  }
  Future<int> update(Todo todo) async{
    return db.update(todoTable, todo.toMap(),where: '$columnId = ?',whereArgs: [todo.id]);
  }
  Future close() => db.close();
  
}