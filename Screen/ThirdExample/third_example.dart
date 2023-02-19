import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/Provider/third_provider.dart';
import 'package:provider_example/Screen/ThirdExample/favourit.dart';

class ThirdExample extends StatefulWidget {
  const ThirdExample({super.key});

  @override
  State<ThirdExample> createState() => _ThirdExampleState();
}

class _ThirdExampleState extends State<ThirdExample> {
  List selected = [];
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Favourite>(context, listen: false);
    print("Build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Example"),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return favourit();
                },
              ));
            },
            child: const Icon(
              Icons.favorite,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return Consumer<Favourite>(
                  builder: (context, Value, child) {
                    return Card(
                      child: ListTile(
                          onTap: () {
                            if (Value.select.contains(index)) {
                              Value.removeitem(index);
                            } else {
                              Value.Selectitem(index);
                            }
                          },
                          title: Text("Item " + index.toString()),
                          trailing: Icon(Value.select.contains(index)
                              ? Icons.favorite
                              : Icons.favorite_border)),
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
