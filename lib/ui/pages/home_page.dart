import 'package:first_app/mocks/apps_mock.dart';

import 'package:first_app/resources/app_strings.dart';
import 'package:first_app/ui/pages/mini_game.dart';
import 'package:first_app/ui/pages/todos_home_page.dart';
import 'package:first_app/ui/views/apps_tile.dart';
import 'package:first_app/ui/views/message_box.dart';
import 'package:flutter/material.dart';
import 'package:first_app/ui/pages/terms_of_use.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _SB = true;
  FocusNode _focusNode = FocusNode();

  void appBarChange() {
    setState(() {
      _SB = !_SB;
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.info),
          onPressed: () {
            if (_SB==false) appBarChange();
            Navigator.push(context, MaterialPageRoute(builder: (context) => TermOfUse(),
              ),
            );
          },
        ),
        title: Container(
        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
        child:_SB ? Text(AppStrings.homePageTitle) : _buildSearchField(context),
        ),
        actions: [
          _SB ? IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              appBarChange();
            },
          ) : IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              appBarChange();
            },
          ),
          IconButton(
            padding: EdgeInsets.fromLTRB(5, 0, 16, 0),
            icon: Icon(Icons.ac_unit),
            onPressed: () {
              if (_SB==false) appBarChange();
              Navigator.push(context, MaterialPageRoute(builder: (context) => MiniGame(),
              ),
              );
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: AppsMock.apps
              .map((app) => AppTile(app: app))
              .toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.android),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => TodosHomePage(),
          ),
          );
        },
      ),
    );
  }
}

Widget _buildSearchField(BuildContext context) {
  return
    TextField(
      obscureText: true,
      style: TextStyle(fontSize: 18.0, color: Color(0xFFbdc6cf)),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(
            left: 14.0, bottom: 8.0, top: 8.0),
        filled: true,
        fillColor:Colors.white,
        labelText: 'Enter the name',
      ),
    );
}
