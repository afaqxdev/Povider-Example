import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/Provider/Second_provider.dart';
import 'package:provider_example/Provider/count_provider.dart';
import 'package:provider_example/Provider/theme_changer.dart';
import 'package:provider_example/Provider/third_provider.dart';
import 'package:provider_example/Routes/Routes.dart';
import 'package:provider_example/Routes/routing_name.dart';
import 'package:provider_example/Screen/Example%20Six/exampleSix.dart';
import 'package:provider_example/Screen/ExampleSecond/example_second.dart';
import 'package:provider_example/Screen/Four%20Example/four_example.dart';
import 'package:provider_example/Screen/GridView/containerrr.dart';
import 'package:provider_example/Screen/GridView/grid.dart';
import 'package:provider_example/Screen/GridView/tab_bar.dart';
import 'package:provider_example/Screen/ThemeChanger/theme_changer.dart';
import 'package:provider_example/Screen/ThirdExample/third_example.dart';
import 'Provider/sixProvider.dart';
import 'Screen/ExampleOne/example_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => timer()),
          ChangeNotifierProvider(create: (_) => ColorChange()),
          ChangeNotifierProvider(create: (_) => Favourite()),
          ChangeNotifierProvider(create: (_) => ThemeSelect()),
          ChangeNotifierProvider(create: (_) => Animations()),
        ],
        child: Builder(
          builder: (context) {
            final themedata = Provider.of<ThemeSelect>(context);
            return MaterialApp(
              themeMode: themedata.theme,
              title: 'Flutter Demo',
              theme: ThemeData(
                iconTheme: const IconThemeData(color: Colors.red),
                brightness: Brightness.light,
                scaffoldBackgroundColor: Colors.white,
                visualDensity: VisualDensity.adaptivePlatformDensity,
                primarySwatch: Colors.blue,
                textTheme: const TextTheme(
                  bodyText1: TextStyle(),
                  bodyText2: TextStyle(),
                ).apply(
                  bodyColor: Colors.black,
                  displayColor: Colors.blue,
                ),
                appBarTheme:
                    const AppBarTheme(centerTitle: true, color: Colors.red),
              ),
              darkTheme: ThemeData(
                brightness: Brightness.dark,
                backgroundColor: Colors.amber.shade100,
                buttonTheme: ButtonThemeData(
                  buttonColor: Colors.purple.shade300,
                  minWidth: 300,
                ),
                textTheme: TextTheme(
                    button: TextStyle(
                        fontSize: 20,
                        height: 2,
                        backgroundColor: Colors.purple.shade300,
                        color: Colors.purple.shade300)),
                appBarTheme: AppBarTheme(
                    centerTitle: true, backgroundColor: Colors.purple.shade400),
              ),
              home: RaisedButto(),
            );
          },
        ));
  }
}
