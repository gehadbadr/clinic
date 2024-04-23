import 'dart:async';
import 'package:quiver/async.dart';

import 'package:clinic/core/consts/consts.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp();
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {  

  late String verifycode  ; 
   bool loader = false;
  final _remainingTime = 0.obs;
  StreamSubscription<CountdownTimer>? timerr;
  int get remainingTime => _remainingTime.value;



  @override
  checkCode() {}

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoutes.successSignUp);
  }

  void startCountdown(int seconds) {
    timerr?.cancel();
    timerr =
        CountdownTimer(Duration(seconds: seconds), const Duration(seconds: 1))
            .listen((timer) {
      _remainingTime.value = timer.remaining.inSeconds;
      if (timer.remaining.inSeconds == 0) {
        timerr?.cancel();
      }
    });
  }

  @override
  void onInit() {
    startCountdown(60);
    super.onInit();
  }

  @override
  void onClose() {
   
    timerr?.cancel();
    super.onClose();
  }
 
}