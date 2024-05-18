import 'package:get/get.dart';
import 'controller.dart';


class AccountScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountScreenController());

  }
}
