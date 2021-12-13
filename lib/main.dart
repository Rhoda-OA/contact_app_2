import 'package:contact_app_2/home_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
 runApp(DevicePreview(
   builder:(context)=>MyApp(),
   enabled:!kReleaseMode,
 ));
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale:DevicePreview.locale(context),
     builder:DevicePreview.appBuilder,
     title:'Contact App',
     theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
  home: HomeView(),
    );
  }
}


