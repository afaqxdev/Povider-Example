import 'package:flutter/material.dart';
import 'package:provider_example/Routes/routing_name.dart';
import 'package:provider_example/Screen/Example%20Six/exampleSix.dart';
import 'package:provider_example/Screen/FiveExample/five_example.dart';
import 'package:provider_example/Screen/Four%20Example/four_example.dart';
import 'package:provider_example/Screen/ThirdExample/third_example.dart';

import '../Screen/ExampleOne/example_one.dart';
import '../Screen/ExampleSecond/example_second.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.exampleOne:
        return MaterialPageRoute(
          builder: (context) => const ExapleOne(),
        );
      case RoutesName.exampleTwo:
        return MaterialPageRoute(
          builder: (context) => const SecondProvider(),
        );
      case RoutesName.exampleThree:
        return MaterialPageRoute(
          builder: (context) => const ThirdExample(),
        );
      case RoutesName.exampleFour:
        return MaterialPageRoute(builder: (context) => const FourExample());
      case RoutesName.exampleSix:
        return MaterialPageRoute(builder: (context) => const ExampleSix());

      default:
        return MaterialPageRoute(builder: (context) => const FiveExample());
    }
  }
}
