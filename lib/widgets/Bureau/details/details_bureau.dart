import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DetailsBureauWidget extends StatefulWidget {
  const DetailsBureauWidget({Key? key}) : super(key: key);

  @override
  _DetailsBureauWidgetState createState() => _DetailsBureauWidgetState();
}

class _DetailsBureauWidgetState extends State<DetailsBureauWidget> {

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
