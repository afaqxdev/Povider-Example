import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Provider/theme_changer.dart';

class ThemeChanger extends StatefulWidget {
  const ThemeChanger({super.key});

  @override
  State<ThemeChanger> createState() => _ThemeChangerState();
}

class _ThemeChangerState extends State<ThemeChanger> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeSelect>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme changer"),
      ),
      body: Column(children: [
        RadioListTile<ThemeMode>(
          title: const Text(
            "Light theme",
            style: TextStyle(fontSize: 20),
          ),
          value: ThemeMode.light,
          groupValue: provider.thememode,
          onChanged: provider.setTheme,
        ),
        RadioListTile<ThemeMode>(
          title: const Text(
            "Dark theme",
            style: TextStyle(fontSize: 20),
          ),
          value: ThemeMode.dark,
          groupValue: provider.thememode,
          onChanged: provider.setTheme,
        ),
        RadioListTile<ThemeMode>(
          title: const Text(
            "System theme",
            style: TextStyle(fontSize: 20),
          ),
          value: ThemeMode.system,
          groupValue: provider.thememode,
          onChanged: provider.setTheme,
        ),
        MaterialButton(
          onPressed: () {},
          child: Text("hi dark them"),
        ),
        Text("hie nice")
      ]),
    );
  }
}
