import 'dart:developer';

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../models/getapi_model.dart';
import '../repositary/home_repositary.dart';

class HomeController extends GetxController {
  HomeRepo getPodRepository = HomeRepo();

  RxList<Data> Details = <Data>[].obs;

  Future<bool> getDetails() async {
    try {
      GetApi? DetailsRequestResponse =
      await getPodRepository.getDetails();
      log("----------controller page------$DetailsRequestResponse");
      if (DetailsRequestResponse != null &&
          DetailsRequestResponse.data != null) {
        Details.value = DetailsRequestResponse.data!;
        Details.refresh();

        log("podaa........${Details}");
        return true;
      }

      return false;
    } catch (e) {
      print('IN catch' + e.toString());

      return false;
    }
  }
}