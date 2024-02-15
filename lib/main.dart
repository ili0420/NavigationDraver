import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themedata(
        primarySwatch: Colors.orange,

      ),
      home: NavigationDrawer(),
    );
  }
}

class NavigasyonSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Depola"),
      ),
      body: Center(
        child: Text("Hoş geldin!"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(""),
              accountEmail: Text(""),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("image/resim.png"),
              ),
            ),
            ListTile(
              title: Text('Anasayfa'),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Profilim'),
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('İlan Ver'),
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.note_add_outlined),
            ),
            ListTile(
              title: Text('İlanlar'),
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.newspaper_outlined),
            ),
            ListTile(
              title: Text('Çıkış yap'),
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.remove_circle),
            ),
          ],
        ),
      ),
    );
  }
}