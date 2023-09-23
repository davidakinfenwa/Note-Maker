import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_hive_bloc/data/model/user.dart';

class AuthenticationService{
  late Box<User> user;
  Future<void>  init() async{
    Hive.registerAdapter(UserAdapter());
    user = await Hive.openBox<User>('userBox');
  }
  Future<String?> authenticateUser(String username, String password) async{
    final result =  user.values.any((element) => element.username==username && element.password==password);
    if (result){
      return username;
    }
    else{
      return null;
    }
  }
}