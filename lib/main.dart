import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'dynamicTheming.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.darkThemeEnabled,
      initialData: true,
      builder: (context, snapshot) => MaterialApp(
        title: 'Tic Tac Toe Game',
        debugShowCheckedModeBanner: false,
        theme: snapshot.data ? ThemeData.dark() : ThemeData.light(),
        home: HomePage(snapshot.data),
      ),
    );
  }
}







