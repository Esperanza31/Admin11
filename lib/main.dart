import 'package:flutter/material.dart';
import 'package:mini_project_five/pages/Auth.dart';
import 'package:mini_project_five/utils/loading.dart';
import 'package:mini_project_five/pages/main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await BusInfo().loadData();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/auth',
        routes: {
          '/': (context) => Loading(),
          '/home': (context) => Main_Page(),
          '/auth': (context) => Auth_Page()
        }
    );
  }
}