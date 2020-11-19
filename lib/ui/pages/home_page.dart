import 'package:first_app/mocks/apps_mock.dart';
import 'package:first_app/models/apps.dart';
import 'package:first_app/resources/app_image_assets.dart';
import 'package:first_app/resources/app_strings.dart';
import 'package:first_app/ui/views/apps_tile.dart';
import 'package:flutter/material.dart';
import 'package:first_app/ui/pages/termOfUse.dart';

class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     /* appBar: AppBar(
        title: Text(AppStrings.homePageTitle),
       */
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.info),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => TermOfUse()));
          },
        ),
        title: Text(AppStrings.homePageTitle),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {   },
          ),
          IconButton(
            padding: EdgeInsets.fromLTRB(5, 0, 16, 0),
            icon: Icon(Icons.menu),
            onPressed: () {   },
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
    );
  }
}
