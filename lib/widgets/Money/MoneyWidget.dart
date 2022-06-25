import 'package:flutter/material.dart';

class MoneyWidget extends StatefulWidget {
  const MoneyWidget({Key? key}) : super(key: key);

  @override
  _MoneyWidgetState createState() => _MoneyWidgetState();
}

class _MoneyWidgetState extends State<MoneyWidget> {

  @override
  Widget build(BuildContext context) {
    return  const Center(
        child: Text('cotisation'),
      );
  }
}
