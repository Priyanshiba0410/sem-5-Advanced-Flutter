import 'dart:async';
import 'package:get/get.dart';

class TimerController extends GetxController {
  RxInt countdown = 10.obs; // Start from 10 seconds
  Timer? _timer;

  void startCountdown() {
    if (_timer != null) _timer!.cancel(); // Reset if already running
    countdown.value = 10; // Reset value
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (countdown.value > 0) {
        countdown.value--;
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
}
