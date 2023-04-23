//  Import LIBRARIES FILES PARTS PROVIDERS
//
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
//  Import FILES
import './screens/home_page.dart';
//  Import PARTS
//  PROVIDERS
//

void main() {
  runApp((const ProviderScope(child: MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const HomePage(),
    );
  }
}
