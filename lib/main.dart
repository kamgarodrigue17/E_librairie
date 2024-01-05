import 'package:elibrairy/Controllers/tabController.dart';
import 'package:elibrairy/Services/AuthService.dart';
import 'package:elibrairy/screens/Authentification/inscriptionAvecImage.dart';
import 'package:elibrairy/screens/Home/Historique_de_lecture.dart';
import 'package:elibrairy/screens/Home/Notifications.dart';
import 'package:elibrairy/screens/Home/Voir_Plus.dart';
import 'package:elibrairy/screens/Home/confirmation.dart';
import 'package:elibrairy/screens/Home/home.dart';
import 'package:elibrairy/screens/MyHomePage.dart';
import 'package:elibrairy/screens/RootPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/Authentification/connexion.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => TabContrller()),
      ChangeNotifierProvider(create: (context) => AuthService()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
