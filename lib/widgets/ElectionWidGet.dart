import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ElectionWidget extends StatelessWidget {
  const ElectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Votez votre Candidat',
          style:TextStyle() ,),
        Padding(padding: EdgeInsets.only(top: 100.0),),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Vote(),
              Vote(),
              Vote(),
              Vote(),
              Vote(),
            ],
          ) ,
        )

      ],
    ));
  }
  Vote(){
    return Container(
        height: 300.0,
        width: 250.0,
        child: Column(
          children: [
            Image.asset(
              'images/logo-AE2I.png',
              fit: BoxFit.fill,
            ),
            ElevatedButton(onPressed: ()=>{},
                child: Text(
                  'Voter',
                  style: TextStyle(
                      color: Colors.white,
                  ),
                ),
              style:  ButtonStyle(
                elevation: MaterialStateProperty.all(15.0),
                backgroundColor: MaterialStateProperty.all(Colors.orange)
              ),
            )
          ],
        )
    );
  }
}
