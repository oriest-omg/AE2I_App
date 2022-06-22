import 'package:ae2i_app/views/HomePage.dart';
import 'package:ae2i_app/widgets/Bureau/BureauWidget.dart';
import 'package:ae2i_app/widgets/Home/HomeWidget.dart';
import 'package:ae2i_app/widgets/Election/ElectionWidGet.dart';
import 'package:ae2i_app/widgets/Home/HomeWidget.dart';
import 'package:ae2i_app/widgets/Parrainage/ParrainageWidget.dart';
import 'package:ae2i_app/widgets/QR_Code/QrCodeWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/home',
      getPages: [
        GetPage(name: '/home', page: ()=> const HomePage()),
        GetPage(name: '/bureau', page: ()=> const BureauWidget()),
        GetPage(name: '/elections', page: ()=> const ElectionWidget()),
        GetPage(name: '/parrainage', page: ()=> const ParrainageWidget()),
        GetPage(name: '/qr_Code', page: ()=> const QrCodeWidget()),
      ],
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

    );
  }
}