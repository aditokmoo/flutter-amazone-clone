import 'package:flutter/material.dart';
import 'package:flutter_amazone_clone/common/widgets/bottom_nav.dart';
import 'package:flutter_amazone_clone/features/admin/screens/add_product_screen.dart';
import 'package:flutter_amazone_clone/features/auth/screens/auth_screen.dart';

import 'features/home/screens/home_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreen(),
      );
    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );
    case BottomNav.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const BottomNav(),
      );
    case AddProductScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AddProductScreen(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen dosnt exist'),
          ),
        ),
      );
  }
}
