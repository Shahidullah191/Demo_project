import 'package:get_storage/get_storage.dart';

class UserPreference {
  Future<bool> saveUser(UserModel responseModel) async {
    GetStorage storage = GetStorage();

    storage.write('token', responseModel.token.toString());
    storage.write('isLogin', responseModel.isLogin!);

    return true;
  }

  Future<UserModel> getUser() async {
    GetStorage storage = GetStorage();

    String? token = storage.read('token');
    bool? isLogin = storage.read('isLogin');

    return UserModel(token: token, isLogin: isLogin);
  }

  Future<bool> removeUser() async {
    GetStorage storage = GetStorage();

    storage.remove('token');
    storage.remove('isLogin');

    return true;
  }
}

class UserModel {
  String? token;
  bool? isLogin;

  UserModel({this.token, this.isLogin});

  UserModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    isLogin = json['isLogin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['isLogin'] = this.token;
    return data;
  }
}
