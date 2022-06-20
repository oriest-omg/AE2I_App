import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodeWidget extends StatelessWidget {
  const QrCodeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child : QrImage(
        data: """
        {
          "nom":"Djelloh",
          "prenom":"Oriest",
          "classe" : "Master1",
          "nemro de telephone": "0749126278"
          "statut cotisation": "ok",
          
        }
        """,
        version: QrVersions.auto,
        size: 300.0,
        backgroundColor: Colors.orange,
      ),
    );
  }
}
