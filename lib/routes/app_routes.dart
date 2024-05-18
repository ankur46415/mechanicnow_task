import 'package:get/get_navigation/src/routes/get_route.dart';

import '../presentation/bottombar/bindings.dart';
import '../presentation/bottombar/bottombar_screen.dart';
import '../presentation/screens/account/account_screen.dart';
import '../presentation/screens/account/bindings.dart';

class AppRoutes {

  static String btmsheet = '/bottombar_screen.dart';
  static String accountscreen = '/account_screen.dart';
  static String buyscreen = '/buy_screen.dart';

  static List<GetPage> pages = [
  GetPage(
  name: btmsheet,
  page: () =>  BottomNavigationBarr(),
  bindings: [
    BottomBarBindings(),
      ],
     ),
    GetPage(
      name: accountscreen,
      page: () =>  AccountScreen(),
      bindings: [
        AccountScreenBindings(),
      ],
    ),
  ];
}