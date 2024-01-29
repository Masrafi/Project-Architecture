import 'dart:convert';
import '../../../core/network/network.dart';
import '../domain/loginShow.dart';
import '../model/login_model.dart';

class LoginRepo implements LoginShowIMPL {
  @override
  Future login(String name, String pass) async {
    final networkService = NetworkService();
    final _data = {
      'email': name,
      'password': pass,
    };
    try {
      final response = await networkService.post('', _data);
      final Map<String, dynamic> data = json.decode(response.body);
      print('From repo: ${data.values.first}');
      return LoginModel.fromJson(data);
    } catch (e) {
      print('Error: $e');
    }
  }
}
