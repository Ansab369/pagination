


import 'package:dartz/dartz.dart';
import 'package:pagination/domain/failures/main_failures.dart';
import 'package:pagination/domain/model/country.dart';

abstract class ICountryRepo {
  Future<Either<MainFailure, List<Country>>> getCountryInfo();
}
