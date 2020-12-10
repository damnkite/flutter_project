

import 'package:first_app/models/apps.dart';
import 'package:first_app/resources/app_strings.dart';
import 'package:first_app/ui/views/app_picture.dart';
import 'package:first_app/ui/views/message_box.dart';
import 'package:flutter/material.dart';

import 'full_screen_picture.dart';

class OneAppPage extends StatelessWidget {

  final App app;

  const OneAppPage({
    Key key,
    @required this.app,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: _buidBackButton(context),
        title: Text(AppStrings.appInfoPageTitle),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: _buildPageContent(context),
      ),
      bottomNavigationBar: new BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: new Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 5.0),
            IconButton(
              onPressed: () {showAlertDialog(context);},
              icon: Icon(Icons.open_in_new),
            ),
            IconButton(
              onPressed: () {showAlertDialog(context);},
              icon: Icon(Icons.delete_forever),
            ),
            IconButton(
              onPressed: () {showAlertDialog(context);},
              icon: Icon(Icons.share),
            ),
            SizedBox(width: 5.0),
          ],
        ),
      ),
      );

  }

  Widget _buidBackButton(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }


  Widget _buildPageContent(BuildContext context) {
    return
     SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildAppPicture(context, app),
              SizedBox(height: 20.0),
              _buildName(),
              SizedBox(height: 5.0),
              _buildDescription(),
              SizedBox(height: 10.0),
              Container(
                margin: EdgeInsets.all(7),
                padding: EdgeInsets.all(7),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.indigo[50],
                  borderRadius: new BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    _buildMobileData(),
                    _buildMemory(),
                    _buildBattery(),
                    _buildPermissions(),
                  ],
                ),
              ),
            ],
        ),
     );
  }

  Widget _buildAppPicture(BuildContext context, App app) {
    return Center(
        child: InkWell(
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FullScreenPicture(app: app)),
              );
            },

          child: AppPicture(
            tag: app.uniqueTag,
            assetPath: app.imageAssetPath,
            size: 150.0,
          ),
        ),
    );
  }


  Widget _buildName() {
    return
          Text(app.appName,
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        );
  }


  Widget _buildDescription() {
    return
          Text(app.description,
              style: TextStyle(
              fontSize: 18.0,
              //fontStyle: FontStyle.italic,
              color: Colors.indigo,
              fontWeight: FontWeight.bold,
              ),
          );
  }

  Widget _descriprionRow(String title, String action, String baseInfo){
    return  Padding(
      padding: EdgeInsets.all(12.0),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start ,
        children: [
          Text(title,
            style: TextStyle(
              color: Colors.black54,
              //fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 5.0),
          Row(
            children:[
              Text(baseInfo,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black38,
                ),
              ),
              Text(action,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black38,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMemory(){
    return  _descriprionRow("Storage", " used in internal srotage", app.appMemory);
  }

  Widget _buildBattery(){
    return  _descriprionRow("Battery", " used since last fully charged", app.usedBattery);
  }

  Widget _buildMobileData(){
    return  _descriprionRow("Mobile data", " used since Nov 28", app.mobileData);
  }

  Widget _buildPermissions(){
    return  _descriprionRow("Permissions", "", app.permissions);
  }
}




