import 'package:e_commerce_app_fashion_sale/core/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: (context, child) {
        return MaterialApp(
          routes: getAppRoutes(),
          debugShowCheckedModeBanner: false,
          title: 'E-Commerce App Fashion Sale',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: '/',
          onGenerateRoute: (settings) {
            return handleOnGenerateRoute(settings);
          },
        );
      },
    );
  }
}
