import 'package:ae2i_app/widgets/Bureau/BureauWidget.dart';
import 'package:ae2i_app/widgets/Election/ElectionWidGet.dart';
import 'package:ae2i_app/widgets/Parrainage/ParrainageWidget.dart';
import 'package:ae2i_app/widgets/QR_Code/QrCodeWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:badges/badges.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('ok'),
    );
  }
}
