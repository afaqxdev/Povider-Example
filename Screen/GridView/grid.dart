import 'package:flutter/material.dart';
import 'package:provider_example/Screen/GridView/appont.dart';
import 'package:provider_example/Screen/GridView/userdata.dart';

class grid extends StatefulWidget {
  const grid({super.key});

  @override
  State<grid> createState() => _gridState();
}

class _gridState extends State<grid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: modelsss.length,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 70),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 20,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            var data = modelsss[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return dataaa(
                      data: data.time.toString(),
                      avav: data.ava.toString(),
                    );
                  },
                ));
              },
              child: Container(
                color: Colors.grey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          data.time.toString(),
                        ),
                      ),
                      Text(
                        data.ava.toString(),
                      ),
                    ]),
              ),
            );
          }),
    );
  }
}
