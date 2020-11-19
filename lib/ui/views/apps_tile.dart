import 'package:first_app/mocks/apps_mock.dart';
import 'package:first_app/models/apps.dart';
import 'package:first_app/ui/pages/one_app_page.dart';
import 'package:first_app/ui/views/app_picture.dart';
import 'package:first_app/ui/views/rounded_corners.dart';
import 'package:flutter/material.dart';

class AppTile extends StatelessWidget {


  final App _app;


  const AppTile({
    Key key,
    @required App app,
  }) : _app = app == null ? AppsMock.defaultApp: app,
        super(key: key);


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => OneAppPage(app: _app)),
        );
      },
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            AppPicture(
              tag: _app.uniqueTag,
              assetPath: _app.imageAssetPath,
            ),
            SizedBox(width: 22),
            Expanded(
              child: _buildAppShortInfo(),
            ),
          ],
        ),
      ),
    );
  }



  Widget _buildAppShortInfo(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start ,
      children: [
        Text("${_app.appName}",
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
        SizedBox(height: 4.0),
        Text(_app.appMemory),
        // Text((_app.time),
        //   style: TextStyle(
        //     fontWeight: FontWeight.bold,
        //   ),),
      ],
    );
  }

}