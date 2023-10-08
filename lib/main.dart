import 'package:exam/ui/screens/screen_1/main1.dart';
import 'package:exam/ui/provider/page_provider.dart';
import 'package:exam/ui/screens/screen_2/main2.dart';
import 'package:exam/ui/screens/screen_3/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PageProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          HomeScreenOne.routeName: (_) => HomeScreenOne(),
          HomeScreenSecond.routeName: (_) => HomeScreenSecond(),
          // HomeScreenThird.routeName: (_) => HomeScreenOne(),
        },
        initialRoute: HomeScreenSecond.routeName,
      ),
    );
  }
}
