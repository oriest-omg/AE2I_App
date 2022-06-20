import 'package:ae2i_app/widgets/BureauWidget.dart';
import 'package:ae2i_app/widgets/ElectionWidGet.dart';
import 'package:ae2i_app/widgets/ParrainageWidget.dart';
import 'package:ae2i_app/widgets/QrCodeWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:badges/badges.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List models = [];
  String categorie = '';
  late String api = 'http://10.0.2.2:8000/api/';
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  bool co = true;
  late String statut = "connecte";
  late int panier = 0;

  List widOption() {
    return <Widget>[
      Text('nothing'),
      ParrainageWidget(),
      BureauWidget(),
      QrCodeWidget(),
      ElectionWidget()
// Connexion()
    ];
  }

  Future<void> _onItemTapped(int index) async {
    if (index == 0) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setBool('Co', true);
      prefs.setString('Statut', 'connecte');
      print(prefs.getString('Statut'));
      setState(() {
        co = true;
        statut = "connecte";
      });
      print(co);
      print(prefs.getBool('Co'));
    }
    if (index == 1) {
      setState(() {
        categorie = '';
      });
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ae2IApp'),
          actions: [
            IconButton(onPressed: ()=>{}, icon: Icon(Icons.account_circle)),
            IconButton(onPressed: ()=>{}, icon: Icon(Icons.settings))
          ],
        ),
        body: widOption().elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.red,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
                label: 'Accueil',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag,
                color: Colors.black,
              ),
              label: 'Parrainage',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              label: 'Bureau',
            ),
            BottomNavigationBarItem(
              icon: Badge(
                badgeContent: Text('0'),
                badgeColor: Colors.orange,
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
              ),
              label: 'QRCODE',
            ),
            BottomNavigationBarItem(
              icon:  Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
              label: 'Election',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
          selectedLabelStyle:
              const TextStyle(fontWeight: FontWeight.w900, fontSize: 20.0),
          unselectedLabelStyle: const TextStyle(fontSize: 0.0),
          selectedIconTheme: const IconThemeData(size: 20.0),
        ));
  }
}
