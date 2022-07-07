import 'dart:developer';

import 'package:machinetest/models/getapi_model.dart';

import '../data/request.dart';

class HomeRepo {
  final ApiClass helper = ApiClass();

  Future<dynamic> getDetails() async {
    try {
      var DetailsApiResponse = await helper.getJson(requiresAuth: true);
      if (DetailsApiResponse != null) {
        log('Response------ ${DetailsApiResponse}');
        GetApi Details = GetApi.fromJson(DetailsApiResponse);
        log(' ${Details}');
        return Details;
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }
}
