import 'package:flutter/material.dart';
import 'package:boilerplate_shop_app/home.dart';
import 'package:boilerplate_shop_app/explore.dart';
import 'package:boilerplate_shop_app/cart.dart';
import 'package:boilerplate_shop_app/menu.dart';

class Navigation {
  Navigation(this.context) {
    populateNavBar();
  }
  BuildContext context;

  Map<String, Widget> navigationList = {
    '/': const Home(),
    '/explore': const Explore(),
    '/cart': const Cart(),
    '/menu': const Menu()
  };

  List<BottomNavigationBarItem> navigationItems = [];

  void populateNavBar() {
    navigationList.forEach((key, value) {
      var item = navItem(key, value);
      navigationItems.add(item);
    });
  }

  NavItem navItem(String route, Widget routeWidget) {
    return NavItem(route, routeWidget, context);
  }
}

class NavItem implements BottomNavigationBarItem {
  NavItem(this.routeName, this.route, this.context);

  String routeName;
  BuildContext context;
  Widget route;
  Icon? iconWidget;
  String? _label;
  String? _toolTip;
  Color? color;

  @override
  // TODO: implement activeIcon
  Widget get activeIcon => IconButton(
        onPressed: () {
          Navigator.pushNamed(context, routeName);
        },
        color: Colors.grey[100],
        icon: iconWidget ??
            Icon(
              Icons.home,
              color: Colors.grey[800],
            ),
      );

  @override
  // TODO: implement backgroundColor
  Color? get backgroundColor => color ?? Colors.grey[800];

  @override
  // TODO: implement icon
  Widget get icon =>
      iconWidget ??
      Icon(
        Icons.home,
        color: Colors.grey[200],
      );

  @override
  // TODO: implement label
  String? get label => _label ?? '';

  @override
  // TODO: implement tooltip
  String? get tooltip => _toolTip;
}
