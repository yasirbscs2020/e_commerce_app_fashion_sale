import 'package:e_commerce_app_fashion_sale/core/route/routes_names.dart';
import 'package:e_commerce_app_fashion_sale/ui/anonymous/forgot_password.dart';
import 'package:e_commerce_app_fashion_sale/ui/anonymous/sign_up/sign_up_screen.dart';
import 'package:e_commerce_app_fashion_sale/ui/common/visual_search/visual_search_screen.dart';
import 'package:flutter/material.dart';

import '../../ui/Home/home_screen.dart';
import '../../ui/anonymous/login/login_screen.dart';
import 'login_page_arguments.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return {
    RoutesName.homePage: (context) => const HomePage(),
    RoutesName.signup: (context) => const SignUpPage(),
    RoutesName.search: (context) => const VisualSearchPage(),
    RoutesName.forgotPassword: (context) => const ForgotPasswordPage(),
  };
}

Route<dynamic>? handleOnGenerateRoute(RouteSettings settings) {
  if (settings.name == RoutesName.login) {
    final args = settings.arguments as LoginPageArguments;

    // Then, extract the required data from
    // the arguments and pass the data to the
    // correct screen.
    return MaterialPageRoute(
      builder: (context) {
        return LoginPage(
          args.title,
        );
      },
    );
  }
  assert(false, 'Need to implement ${settings.name}');
  return null;
}
