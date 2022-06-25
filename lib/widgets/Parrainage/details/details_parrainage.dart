import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DetailsParrainageWidget extends StatefulWidget {
  const DetailsParrainageWidget({Key? key}) : super(key: key);

  @override
  _DetailsParrainageWidgetState createState() => _DetailsParrainageWidgetState();
}

class _DetailsParrainageWidgetState extends State<DetailsParrainageWidget> {

  String? id = Get.parameters["id"];
  //ou int id = int.parse(Get.parameters["id"])

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: Center(
        child: Text('ok $id'),
      ),
    );
  }
}
