import 'package:clinic/core/classes/status_request.dart';

abstract class HandlingData {
  static handlingData(response) {
    if (response is StatusRequest) {
      return response;
    } else {
      return StatusRequest.success;
    }
  }
}
