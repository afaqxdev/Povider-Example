import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/Provider/count_provider.dart';
import 'package:provider_example/Routes/routing_name.dart';

class ExapleOne extends StatefulWidget {
  const ExapleOne({
    super.key,
  });

  @override
  State<ExapleOne> createState() => _ExapleOneState();
}

class _ExapleOneState extends State<ExapleOne> {
  @override
  Widget build(BuildContext context) {
    final timerset = Provider.of<timer>(context, listen: false);
    print("Build all widget again");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Consumer<timer>(
            builder: (context, value, child) {
              print("call only consumer");

              return Text(
                timerset.count.toString(),
                style: const TextStyle(
                  fontSize: 50,
                ),
              );
            },
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, RoutesName.exampleOne);
            },
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          timerset.settimer();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
