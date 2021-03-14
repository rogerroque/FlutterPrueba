import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/FirstPackage/Games.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: buildDrawer(),
      body: Container(
        child: ElevatedButton(
         onPressed: () {
           Navigator.push(context, MaterialPageRoute(builder: (context) => Games()),
           );
         },
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
      floatingActionButton: buildFloatingActionButton(),
    );
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
      child: Icon(
        Icons.add,
      ),
      onPressed: () {},
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message_sharp),
          label: 'Messages',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.games),
          label: 'Games',
        ),
      ],
    );
  }

  Drawer buildDrawer() {
    return Drawer(
      child: Text('First Drawer'),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text('Hola'),
      centerTitle: true,
      backgroundColor: Colors.white30,
      actions: <Widget> [
        IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
            color: Colors.black),
        IconButton(
            icon: Icon(Icons.mail),
            onPressed: null,
            color: Colors.white),
        SizedBox(width: 50.0 / 2)
      ],
    );
  }
}