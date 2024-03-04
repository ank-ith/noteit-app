import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:noteit/view/splash_notes.dart';

Future <void> main() async{
WidgetsFlutterBinding.ensureInitialized();
await Hive.initFlutter();
var catBox=await Hive.openBox('noteBox');
runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    home: SplashScreen(),);

  }}