import 'package:flutter/material.dart';
import 'package:sharepreferens/pages/Home_page.dart';
import 'package:sharepreferens/utils/shared_global_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedGlobal preference = SharedGlobal();
  await preference.initSharedPreferences();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}