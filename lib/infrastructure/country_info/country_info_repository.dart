import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pagination/domain/failures/main_failures.dart';
import 'package:pagination/domain/i_country_repo.dart';
import 'package:pagination/domain/model/country.dart';
import 'package:pagination/infrastructure/api_key.dart';

@LazySingleton(as: ICountryRepo)
class CountryDataRepository implements ICountryRepo{
  @override
  Future<Either<MainFailure, List<Country>>> getCountryInfo()async {
    log("---------------------------------- LOG 1");
   try {
      final Response response = await Dio(BaseOptions()).get(APIkey);
      if (response.statusCode == 200 || response.statusCode == 201) {
        log(response.data.toString());
        // final newsList = [];
        final newsList = (response.data['articles'] as List).map((e) {
          return Country.fromJson(e);
        }).toList();
        print(newsList);
        return Right(newsList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (error) {
      log(error.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

}