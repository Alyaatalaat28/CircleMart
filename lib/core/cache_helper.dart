import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {

  static SharedPreferences?sharedpreferences;
  
  static init()async {
    sharedpreferences = await SharedPreferences.getInstance();
  }

//set data
static Future<bool?> saveData({ required key,required value,})
async {
  return await sharedpreferences?.setStringList(key, value);
} 

//get data
static List<String>? getData({required key}){
  return sharedpreferences?.getStringList(key);
}

//remove data
static Future<bool?> removeData({required key})async{
 return await sharedpreferences?.remove(key);
}

}