import 'dart:convert';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart';
import '../../../core/network/network.dart';
import '../../../core/shared_preference/sharedPrefarance_service.dart';
import '../model/view_model.dart';
import '../domain/dataShow.dart';

class DataShowRepo implements DataShowIMPL {
  
  @override
  Future<Either<String, List<DataView>>> dataShowFetch() async {
     String id = SharedPreferencesService.getString('id');
    final networkService = NetworkService();
    try {
      print('.............................................. repo');
      final response = await networkService.get('',);
      print(response.body);
      final List result = jsonDecode(response.body);
      print(result);
      return Right(result.map((e) => DataView.fromJson(e)).toList());
      //                return DataView.fromJson(jsonDecode(response.body));
    } catch (e) {
      return Left('Error');
    }
  }
}
