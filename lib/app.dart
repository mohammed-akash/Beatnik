 import 'package:flutter/material.dart';
import 'package:relationsecure/utils/theme/theme.dart';
 class App extends StatelessWidget {
   const App({super.key});

   // This widget is the root of your application.
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       themeMode: ThemeMode.system,
       theme: BeatnikTheme.lightTheme,
       darkTheme: BeatnikTheme.darkTheme,
     );
   }
 }