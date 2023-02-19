import 'package:flutter/material.dart';

class FourExample extends StatelessWidget {
  const FourExample({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height * .06;
    final Width = MediaQuery.of(context).size.width * .9;
    ValueNotifier<bool> conter = ValueNotifier<bool>(true);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Four Example"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              "State less",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: size,
            ),
            SizedBox(
                width: Width,
                child: ValueListenableBuilder(
                  valueListenable: conter,
                  builder: (context, value, child) {
                    return TextFormField(
                      obscureText: conter.value,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        suffixIcon: InkWell(
                          onTap: () {
                            conter.value = !conter.value;
                          },
                          child: Icon(
                            conter.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}
