import 'package:flutter/material.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {

  // String? id = Get.parameters["id"];
  //ou int id = int.parse(Get.parameters["id"])

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Réglages de l\'application'),
      ),
      body: const Center(
        child: Text('reglages'),
      ),
    );
  }
}
