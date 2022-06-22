import 'package:get/get.dart';

import '../controller/UserController.dart';

class HomeBinding extends Bindings{

  @override
  void dependencies() {
    Get.put(UserWidgetController());
    // Get.put(HomeController());
  }
}