import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:final_project/screen/login.dart';
// import 'package:final_project/provider/pages/barang_add_page.dart';
// import 'package:final_project/provider/pages/barang_detail_page.dart';
// import 'package:final_project/provider/pages/barang_page.dart';
// import 'package:final_project/provider/pages/barang_review_page.dart';
// import 'package:final_project/provider/pages/category_add_page.dart';
// import 'package:final_project/provider/pages/category_page.dart';
// import 'package:final_project/provider/pages/home_page.dart';
// import 'package:final_project/provider/providers/barang_provider.dart';
// import 'package:final_project/provider/providers/category_provider.dart';
// import 'package:final_project/provider/providers/review_provider.dart';
// import 'package:final_project/provider/providers/barang.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';
import 'package:final_project/uifp//view/home.dart';
import 'package:final_project/uifp/view/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Final Project',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
      ),
      home: const Splash(),
    );
  }
}
