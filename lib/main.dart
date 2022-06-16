import 'package:flutter/material.dart';
import 'package:cocktail/View/homePage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:cocktail/Model/hiveModel.dart';

void main() async{
  Hive.initFlutter();
  Hive.registerAdapter(CocktailHiveAdapter());
  await Hive.openBox<CocktailHive>('cocktail_box');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cocktail List',
        theme: ThemeData(
          colorSchemeSeed: Color.fromARGB(255, 215, 32, 32),
        ),
        home: const HomePage()
    );
  }
}


