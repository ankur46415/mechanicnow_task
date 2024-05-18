import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../screens/account/controller.dart';
import 'bottombar_controller.dart';

class BottomBarBindings extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut(() => BottomBarController());
    Get.lazyPut(() => AccountScreenController());
    Get.lazyPut(() => AccountScreenController());
    Get.lazyPut(() => AccountScreenController());

  }
}
