import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CountryProvider with ChangeNotifier {

  List<CountryInfo> countryInfo = [];

  // function for api call
  Future<void> getUserData() async {
    try {
      Dio dio = Dio();

      final response =
          await dio.get('https://restcountries.com/v3.1/all?fields=name,flags');

      var responseJson = response.data;
      log(responseJson.toString());

      if (response.statusCode == 200) {
        countryInfo =
            (response.data as List).map((json) => CountryInfo.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load users');
      }
    } catch (e) {
      print('Error: $e');
      log('--------------------------------');

    }
  }
}


class CountryInfo {
  final String flagPngUrl;
  final String flagSvgUrl;
  final String commonName;
  final String officialName;

  CountryInfo({
    required this.flagPngUrl,
    required this.flagSvgUrl,
    required this.commonName,
    required this.officialName,
  });

  factory CountryInfo.fromJson(Map<String, dynamic> json) {
    return CountryInfo(
      flagPngUrl: json['flags']['png'],
      flagSvgUrl: json['flags']['svg'],
      commonName: json['name']['common'],
      officialName: json['name']['official'],
    );
  }
}
