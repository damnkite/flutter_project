import 'package:flutter/cupertino.dart';

class App{


  final String appName;


  final String  appMemory;
  final String  id;
  final String  description;
  final String  mobileData;
  final String  permissions;
  final String  usedBattery;

  final String  imageAssetPath;

 const App({

    @required this.appName,

    @required this.appMemory,
    @required this.imageAssetPath,
    @required this.id,
    @required this.description,
    @required this.mobileData,

    @required this.permissions,
    @required this.usedBattery,

  });

 String  get uniqueTag  => "$id$hashCode";
}