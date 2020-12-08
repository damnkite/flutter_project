
import 'package:first_app/models/apps.dart';
import 'package:first_app/resources/app_image_assets.dart';

class AppsMock{
  AppsMock._();
  
  static const App defaultApp = App(
    appName: "Unknown",
    appMemory: "0000",
    id: "#?",
    imageAssetPath: AppImageAssets.android,
    mobileData:"0000",

    permissions:"Unknown",
    usedBattery:"0000",
  );


  static const List<App> apps =[
    App(
      appName: "Google",
      appMemory: "540.54 MB",
      id: "#1",
      description: "Standart application",
      imageAssetPath: AppImageAssets.google,
      mobileData:"87 MB",

      permissions:"Microphone, Location and Storage",
      usedBattery:"2%",
    ),

    App(
      appName: "Instagram",
      appMemory: "1.4 GB",
      id: "#2",
      description: "Installed",
      imageAssetPath: AppImageAssets.instagram,
      mobileData:"24 MB",

      permissions:"Camera, Microphone and Location",
      usedBattery:"19%",

    ),


    App(
      appName: "Google Maps",
      appMemory: "98.09 MB",
      id: "#3",
      description: "Standart application",
      imageAssetPath: AppImageAssets.googlemaps,
      mobileData:"4.5 MB",

      permissions:"Location",
      usedBattery:"0%",

    ),

    App(
      appName: "LinkedIn",
      appMemory: "145 MB",
      id: "#4",
      description: "Installed",
      imageAssetPath: AppImageAssets.linkedin,
      mobileData:"5 MB",

      permissions:"Contacts, Location and Storage",
      usedBattery:"1%",
    ),

    App(
      appName: "Pinterest",
      appMemory: "470.55 MB",
      id: "#5",
      description: "Installed",
      imageAssetPath: AppImageAssets.pinterest,
      mobileData:"122 MB",

      permissions:"Camera, Contacts and Storage",
      usedBattery:"6%",
    ),

    App(
      appName: "Reddit",
      appMemory: "233.3 MB",
      id: "#6",
      description: "Installed",
      imageAssetPath: AppImageAssets.reddit,
      mobileData:"14 MB",

      permissions:"Microphone, Contacts and Storage",
      usedBattery:"2%",

    ),

    App(
      appName: "Twitch",
      appMemory: "78 MB",
      id: "#7",
      description: "Installed",
      imageAssetPath: AppImageAssets.twitch,
      mobileData:"50 MB",

      permissions:"Microphone, Location and Storage",
      usedBattery:"2%",

    ),

    App(
      appName: "Behance",
      appMemory: "554.34 MB",
      id: "#8",
      description: "Installed",
      imageAssetPath: AppImageAssets.behance,
      mobileData:"87 MB",

      permissions:"Microphone, Location and Storage",
      usedBattery:"0%",

    ),

    App(
      appName: "GitHub",
      appMemory: "287.2 MB",
      id: "#9",
      description: "Installed",
      imageAssetPath: AppImageAssets.github,
      mobileData:"22 MB",

      permissions:"Storage",
      usedBattery:"5%",
    ),
    App(
      appName: "Gmail",
      appMemory: "32.9 MB",
      id: "#10",
      description: "Standart application",
      imageAssetPath: AppImageAssets.gmail,
      mobileData:"91 MB",

      permissions:"Contscts and Storage",
      usedBattery:"1%",
    ),
  ];
}

