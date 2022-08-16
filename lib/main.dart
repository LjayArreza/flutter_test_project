import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import 'app/core/routes/app_pages.dart';
import 'data/provider/network/environment/evironment.dart';

Future<void> main() async {
  await dotenv.load(fileName: Environment.mode);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Theora Medical',
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      defaultTransition: Transition.fade,
      initialRoute: Routes.LANDING,
      getPages: AppPages.pages,
    );
  }
}
