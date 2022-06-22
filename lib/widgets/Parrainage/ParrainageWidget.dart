import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ParrainageWidget extends StatelessWidget {
  const ParrainageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: SingleChildScrollView(
            // physics: ClampingScrollPhysics(),
          child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 20.0),
                  child: Container(
                      width: double.infinity,
                      height: 60,
                      child: TextField(
                        // style: theme.textTheme.bodyText1,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.search),
                            contentPadding: const EdgeInsets.only(top:1.0,left:10.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "Quel nom recherchez vous ?",
                            fillColor: Colors.white
                        ),
                      )
                  ),
                ),
                 ListView.builder(
                   physics: const NeverScrollableScrollPhysics(),
                   shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return  Card(
                            elevation: 5,
                            child: Container(
                              height: 200.0,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(100),
                                    topLeft: Radius.circular(40),
                                  topRight:  Radius.circular(40),
                                  bottomRight: Radius.circular(40)
                                ),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    height: 200.0,
                                    width: 150.0,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(5),
                                            topLeft: Radius.circular(5)
                                        ),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage("https://is2-ssl.mzstatic.com/image/thumb/Video2/v4/e1/69/8b/e1698bc0-c23d-2424-40b7-527864c94a8e/pr_source.lsr/268x0w.png")
                                        )
                                    ),
                                  ),
                                  SizedBox(
                                    height: 100,
                                    child: Padding(
                                      padding: EdgeInsets.only(left:25),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const <Widget>[
                                          Text(
                                            'Nom :',
                                          ),
                                          SizedBox(height: 20,),
                                          Text("Prenom :",style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(255, 48, 48, 54)
                                          ),),

                                          SizedBox(height: 20,),
                                          Text("Classe :",style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(255, 48, 48, 54)
                                          ),),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
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
}
