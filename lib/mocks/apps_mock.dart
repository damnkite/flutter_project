
import 'package:first_app/models/apps.dart';
import 'package:first_app/resources/app_image_assets.dart';

class AppsMock{
  AppsMock._();
  
  static const App defaultApp = App(
    appName: "Unknown",
    appMemory: "0000",
    id: "#?",
    imageAssetPath: AppImageAssets.man1,

  );


  static const List<App> apps =[
    App(
      appName: "Google",
      appMemory: "540.54 MB",
      id: "#1",
      description: "Standart application",
      imageAssetPath: AppImageAssets.google,

    ),

    App(
      appName: "Instagram",
      appMemory: "1.4 GB",
      id: "#2",
      description: "Installed application",
      imageAssetPath: AppImageAssets.instagram,


    ),


    App(
      appName: "Google Maps",
      appMemory: "98.09 MB",
      id: "#3",
      description: "Standart application",
      imageAssetPath: AppImageAssets.googlemaps,


    ),

    App(
      appName: "LinkedIn",
      appMemory: "145 MB",
      id: "#4",
      description: "Installed application",
      imageAssetPath: AppImageAssets.linkedin,

    ),

    App(
      appName: "Pinterest",
      appMemory: "470.55 MB",
      id: "#5",
      description: "Installed application",
      imageAssetPath: AppImageAssets.pinterest,

    ),

    App(
      appName: "Reddit",
      appMemory: "233.3 MB",
      id: "#6",
      description: "Installed application",
      imageAssetPath: AppImageAssets.reddit,


    ),

    App(
      appName: "Twitch",
      appMemory: "78 MB",
      id: "#7",
      description: "Installed application",
      imageAssetPath: AppImageAssets.twitch,


    ),

    App(
      appName: "Behance",
      appMemory: "554.34 MB",
      id: "#8",
      description: "Installed application",
      imageAssetPath: AppImageAssets.behance,


    ),

    App(
      appName: "GitHub",
      appMemory: "287.2 MB",
      id: "#9",
      description: "Installed application",
      imageAssetPath: AppImageAssets.github,

    ),
    App(
      appName: "Gmail",
      appMemory: "32.9 MB",
      id: "#10",
      description: "Standart application",
      imageAssetPath: AppImageAssets.gmail,

    ),
  ];
}

