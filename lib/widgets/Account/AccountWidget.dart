import 'package:flutter/material.dart';

class AccountWidget extends StatefulWidget {
  const AccountWidget({Key? key}) : super(key: key);

  @override
  _AccountWidgetState createState() => _AccountWidgetState();
}

class _AccountWidgetState extends State<AccountWidget> {

  // String? id = Get.parameters["id"];
  //ou int id = int.parse(Get.parameters["id"])

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Compte'),
      ),
      body: const Center(
        child: Text('compte'),
      ),
    );
  }
}
