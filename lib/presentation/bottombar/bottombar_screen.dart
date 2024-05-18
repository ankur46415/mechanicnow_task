
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../screens/Machanic_now/machanicnow_screen.dart';
import '../screens/account/account_screen.dart';
import '../screens/cart/cart_screen.dart';
import '../screens/search/search_screen.dart';
import '../screens/services/services_screen.dart';
import 'bottombar_controller.dart';

class BottomNavigationBarr extends StatelessWidget {
  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle =
  TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 54,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: landingPageController.changeTabIndex,
            currentIndex: landingPageController.tabIndex.value,
            backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.red,
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'SERVICES',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'SEARCH',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.directions_car_sharp),
                label: 'MACHAINICNOW',
              ),
              BottomNavigationBarItem(
                icon:  Icon(Icons.add_shopping_cart),
                label: 'CART',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.manage_accounts),
                label: 'ACCOUNT',
              ),
            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    final BottomBarController landingPageController =
    Get.put(BottomBarController(), permanent: false);
    return SafeArea(
        child: Scaffold(
          bottomNavigationBar:
          buildBottomNavigationMenu(context, landingPageController),
          body: Obx(() => IndexedStack(
            index: landingPageController.tabIndex.value,
            children: [
              ServicesScreen(),
              const SearchScreen(),
              MachanicnowScreen(),
              CartScreen(),
              AccountScreen(),
            ],
          )),
        ));
  }
}