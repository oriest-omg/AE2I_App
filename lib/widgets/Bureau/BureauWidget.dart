import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class BureauWidget extends StatelessWidget {
  const BureauWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    List items = getDummyList();
    List membersPicture = getImage();

    return Scaffold(
      body: SingleChildScrollView(
        // physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 20),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                String picture = membersPicture[index];
                int id = items[index];
                return  Padding(
                  padding: const EdgeInsets.only(bottom: 18.0,left:20,right: 20),
                  child: GestureDetector(
                    onTap: (){
                      Get.toNamed('/details_bureau/$id');
                    },
                    child: Container(
                      height: 300.0,
                      // color: Colors.transparent,
                      child: Container(
                          decoration:  BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.white,
                                blurRadius: 35.0, // soften the shadow
                                spreadRadius: 15.0, //extend the shadow
                                offset: Offset(
                                  15.0, // Move to right 10  horizontally
                                  30.0, // Move to bottom 10 Vertically
                                ),
                              )
                            ],
                              color: Colors.green,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(40.0),
                                topRight: Radius.circular(40.0),
                                bottomRight: Radius.circular(40.0),
                                bottomLeft: Radius.circular(40.0)
                              ),
                              image: DecorationImage(
                                image: AssetImage(picture),
                                fit: BoxFit.fill,
                              ),

                          ),
                          child: Container(
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 25.0, // soften the shadow
                                  spreadRadius: 5.0, //extend the shadow
                                  offset: Offset(
                                    15.0, // Move to right 10  horizontally
                                    15.0, // Move to bottom 10 Vertically
                                  ),
                                )
                              ],
                            ),
                            child: Stack(
                              children: const [
                                Positioned(
                                  left: 160,
                                  bottom: 40,
                                  child: Text('Le président',style: TextStyle(
                                      color: Colors.white,
                                    fontSize: 30
                                  ),),
                                ),
                              ]
                            ),
                          )
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
  static List getDummyList() {
    List list = List.generate(10, (i) {
      return i+ 1;
    });
    return list;
  }

  static List getImage(){
    List list = [
      'images/bohiri.jpg',
      'images/bohiri.jpg',
      'images/bohiri.jpg',
      'images/bohiri.jpg',
      'images/bohiri.jpg',
      'images/bohiri.jpg',
      'images/bohiri.jpg',
      'images/bohiri.jpg',
      'images/bohiri.jpg',
      'images/bohiri.jpg',
    ];
    return list;
  }
}
