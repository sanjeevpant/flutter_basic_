
import 'package:classico_as/details_page.dart';
import 'package:classico_as/product_list_detail/product_list.dart';
import 'package:classico_as/product_list_detail/product_list_detail.dart';
import 'package:classico_as/settings_page.dart';
import 'package:classico_as/sign_in_page.dart';
import 'package:classico_as/splash_page.dart';
import 'package:classico_as/wallpaper_page.dart';
import 'package:flutter/cupertino.dart';

class AppRoutes {
  static const String pageSplashRoute = "/splash";
  static const String pageSignInRoute = "/signInPage";
  static const String pageHomeRoute = "/home";
  static const String pageDetailsRoute = "/details";
  static const String pageSettingsRoute = "/settings";
  static const String pageProductListRoute = "/productList";
  static const String pageProductDetailRoute = "/productDetail";

  static Map<String, WidgetBuilder> mRoutes ={
    pageSplashRoute: (_) => SplashPage(),
    pageSignInRoute: (_) => SignInPage(),
    pageHomeRoute: (_) => WallpaperPage(),
    pageDetailsRoute: (_) => DetailsPage(),
    pageSettingsRoute: (_) => SettingsPage(),
    pageProductListRoute: (_) => ProductList()
    // pageProductDetailRoute: (_) => ProductDetail()
  };

}