import 'package:first_app/models/apps.dart';
import 'package:first_app/resources/app_strings.dart';
import 'package:first_app/ui/views/app_picture.dart';
import 'package:flutter/material.dart';

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
        child: _buildPageContent(),
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




  Widget _buildPageContent() {
    return Column(
      children: [
        _buildAppPicture(),
        SizedBox(height: 10.0),
        _buildName(),
        SizedBox(height: 10.0),
        _buildDescription(),
        SizedBox(height: 10.0),
        _buildMemory(),
        SizedBox(height: 20.0),
      ],
    );
  }

  Widget _buildAppPicture() {
    return Center(
        child: AppPicture(
          tag: app.uniqueTag,
          assetPath: app.imageAssetPath,
          size: 150.0,
        )
    );
  }
/*
  Widget _buildPhoneNumber() {
    return Text(app.phoneNumber, style: TextStyle(
      fontSize: 18.0,
      fontStyle: FontStyle.italic,
      color: Colors.black45,
    ),
    );
  }


  Widget _buildFullName() {
    return Text(app.fullName,
      style: TextStyle(
        fontSize: 19.0,
        color: Colors.black45,
        fontWeight: FontWeight.bold,
      ),
    );
  }

*/
  Widget _buildName() {
    return Text(app.appName,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      ),
    );
  }
/*
  Widget _buildId(){
    return Text(app.id,
      style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 25.0,
    ),
    );
  }
*/
  Widget _buildDescription() {
    return Text(app.description,
      style: TextStyle(
        fontSize: 18.0,
        fontStyle: FontStyle.italic,
        color: Colors.black54,
        fontWeight: FontWeight.bold,
      ),
    );
  }


  Widget _buildMemory(){
    return Text(app.appMemory,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
        fontStyle: FontStyle.italic,
        color: Colors.grey,
      ),
    );
  }

/*
  Widget _buildTime(){
    return Text(app.time,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25.0,
        fontStyle: FontStyle.italic,
        color: Colors.grey,
      ),
    );

  }
*/

}




