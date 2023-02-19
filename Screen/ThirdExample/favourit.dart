import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Provider/third_provider.dart';

class favourit extends StatefulWidget {
  const favourit({super.key});

  @override
  State<favourit> createState() => _favouritState();
}

class _favouritState extends State<favourit> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Favourite>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Example"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: provider.select.length,
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
