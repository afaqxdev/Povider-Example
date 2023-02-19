import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/Provider/Second_provider.dart';

class SecondProvider extends StatefulWidget {
  const SecondProvider({super.key});

  @override
  State<SecondProvider> createState() => _SecondProviderState();
}

class _SecondProviderState extends State<SecondProvider> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ColorChange>(context, listen: false);
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 15,
            ),
            Consumer<ColorChange>(
              builder: (context, value, child) {
                return Slider(
                  min: 0,
                  max: 1,
                  value: value.val,
                  onChanged: (value) {
                    provider.setValue(value);
                  },
                );
              },
            ),
            Consumer<ColorChange>(
              builder: (context, value, child) {
                return Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 200,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(value.val),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 190,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.red.withOpacity(value.val),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
