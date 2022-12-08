import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:infos_app/views/components/my_text.component.dart';
import 'package:infos_app/views/components/partials/header.component.dart';

class InfosScreen extends StatefulWidget {
  const InfosScreen({Key? key}) : super(key: key);

  @override
  State<InfosScreen> createState() => _InfosScreenState();
}

class _InfosScreenState extends State<InfosScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0d2233),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        backgroundColor: Color(0xff0d2233),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff7c798c),
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10.0,
          ),
          header(context, "Informations generales", 180.0),
          ListTile(
            title: MyText(variant: "SUBTITLE", text: "Prenom",),
            subtitle: MyText(variant: "TITLE", text: "Wilfried",),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.edit, color: Colors.white, size: 20,)),
          ),
          ListTile(
            title: MyText(variant: "SUBTITLE", text: "Nom",),
            subtitle: MyText(variant: "TITLE", text: "DJOPA TCHATAT",),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.edit, color: Colors.white, size: 20,)),
          ),
          ListTile(
            title: MyText(variant: "SUBTITLE", text: "Ville, Pays",),
            subtitle: MyText(variant: "TITLE", text: "Paris, France",),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.edit, color: Colors.white, size: 20,)),
          ),
          SizedBox(
            height: 30.0,
          ),
          header(context, "Compte de credit", 130.0),
          ListTile(
            title: MyText(variant: "SUBTITLE", text: "Numero de telephone",),
            subtitle: MyText(variant: "TITLE", text: "+237 6 95 76 25 95",),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.edit, color: Colors.white, size: 20,)),
          ),
          ListTile(
            title: MyText(variant: "SUBTITLE", text: "Email",),
            subtitle: MyText(variant: "TITLE", text: "wilfried.djopa@gmail.com",),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.edit, color: Colors.white, size: 20,)),
          ),
        ],
      ),
    );
  }
}
