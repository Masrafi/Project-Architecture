import 'package:dartz/dartz.dart';
import '../model/view_model.dart';

abstract class DataShowIMPL {
  Future<Either<String, List<DataView>>> dataShowFetch();
  
  /// for post method with parameters
  //Future<Either<Failure, List<DataView>>> dataShowFetch(
      //       {required int id, required DateTime fromDate, required DateTime toData});
}