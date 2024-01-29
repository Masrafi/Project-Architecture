import 'package:dartz/dartz.dart';
import '../model/login_model.dart';

abstract class LoginShowIMPL {
  Future login(String name, String pass);
  
  /// for post method
  //Future<Either<Failure, List<DataView>>> dataShowFetch(
      //       {required int id, required DateTime fromDate, required DateTime toData});
}