import 'package:flutter/material.dart';
import 'package:vgd/presentation/resources/theme.dart';
import 'package:vgd/presentation/route/routes_manager.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MCBP",
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.login,
      theme: getApplicationTheme(),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
    );
  }
}
