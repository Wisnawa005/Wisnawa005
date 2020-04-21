//import 'package:ags_wis/splash_screen.dart';
import 'package:flutter/material.dart';

import './beranda.dart' as beranda;
import 'package:ags_wis/pages/listproduk.dart' as listproduk;

// void main() {
//   runApp(new MaterialApp(
//     title: "MyApps",
//     home: new MyApp(),
//   ));
// }

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  //ini variabel controller untuk mengatur tabbar
  TabController controller;
  //jangan lupa tambahkan initState untuk inisialisasi dan mengaktifkan tab
  @override
  void initState() {
    controller = new TabController(vsync: this, length: 2);
    super.initState();
  }

  //jangan lupa tambahkan dispose untuk berpindah halaman
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new beranda.Beranda(),
          new listproduk.Listproduk(),
        ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.blue,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.home)),
            new Tab(icon: new Icon(Icons.list)),
          ],
        ),
      ),
    );

  }
}