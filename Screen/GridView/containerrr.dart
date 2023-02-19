import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider_example/Screen/Example%20Six/exampleSix.dart';
import 'package:provider_example/Screen/Four%20Example/four_example.dart';
import 'package:provider_example/Screen/GridView/tab_bar.dart';
import 'package:provider_example/Screen/GridView/userdata.dart';
import 'package:provider_example/Screen/ThirdExample/third_example.dart';

class RaisedButto extends StatefulWidget {
  const RaisedButto({super.key});

  @override
  State<RaisedButto> createState() => _RaisedButtoState();
}

PageController pageController = PageController();

class _RaisedButtoState extends State<RaisedButto> {
  List<Widget> page = [
    const ThirdExample(),
    const FourExample(),
    const ExampleSix()
  ];
  PageController pageController = PageController();

  LocalJson localJson = LocalJson();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("container"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 100,
                  child: ListTile(
                    title: Text("afaq"),
                    subtitle: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                ),
                SizedBox(
                    width: 100,
                    child: ListTile(
                      title: Text("afaq"),
                      subtitle: TextFormField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12))),
                      ),
                    )),
              ],
            )
            // SizedBox(
            //     height: 50,
            //     child: ListView.builder(
            //         scrollDirection: Axis.horizontal,
            //         itemCount: 3,
            //         itemBuilder: (context, index) {
            //           return InkWell(
            //             onTap: () {
            //               setState(() {
            //                 selectedIndex = index;
            //                 pageController.jumpToPage(index);
            //               });
            //             },
            //             child: Padding(
            //               padding: const EdgeInsets.only(
            //                   top: 8.0, bottom: 8.0, right: 15),
            //               child: Material(
            //                 elevation: 3,
            //                 borderRadius: BorderRadius.circular(30),
            //                 child: Container(
            //                   decoration: BoxDecoration(
            //                     color: selectedIndex == index
            //                         ? Colors.grey
            //                         : Colors.white,
            //                     borderRadius: BorderRadius.circular(30),
            //                   ),
            //                   height: 50,
            //                   width: selectedIndex == index
            //                       ? MediaQuery.of(context).size.width - 180
            //                       : 58,
            //                   child: selectedIndex == index
            //                       ? Row(
            //                           children: [
            //                             Padding(
            //                               padding: const EdgeInsets.all(8.0),
            //                               child: CircleAvatar(
            //                                 backgroundColor: Colors.white,
            //                                 maxRadius: 27,
            //                                 child: Padding(
            //                                   padding: const EdgeInsets.all(5),
            //                                   child:
            //                                       Image.network(images[index]),
            //                                 ),
            //                               ),
            //                             ),
            //                             Text(
            //                               names[index],
            //                               style: const TextStyle(
            //                                   fontSize: 30,
            //                                   color: Colors.white),
            //                             )
            //                           ],
            //                         )
            //                       : Padding(
            //                           padding: const EdgeInsets.all(5),
            //                           child: Image.network(images[index]),
            //                         ),
            //                 ),
            //               ),
            //             ),
            //           );
            //         })),
            // Expanded(
            //   child: PageView(
            //     children: page,
            //     scrollDirection: Axis.horizontal,
            //     controller: pageController,
            //     onPageChanged: (num) {
            //       setState(() {
            //         selectedIndex = num;
            //       });
            //     },
            //   ),
            // ),

            //   Expanded(
            //     child: FutureBuilder(
            //       future: localJson.adidasShoes(),
            //       builder: (context, AsyncSnapshot snapshot) {
            //         return ListView.builder(
            //           itemCount: snapshot.data["xiaomi"].length,
            //           itemBuilder: (context, index) {
            //             return Column(
            //               children: [
            //                 Image(
            //                     image: NetworkImage(snapshot.data["xiaomi"][index]
            //                             ["image"]
            //                         .toString())),
            //                 Text(
            //                     snapshot.data["xiaomi"][index]["name"].toString())
            //               ],
            //             );
            //           },
            //         );
            //       },
            //     ),
          ],
        ),
      ),
    );
  }
}

List<String> names = ["Nike", "Addidas", "Puma"];
List<String> images = [
  "https://pngimg.com/uploads/nike/nike_PNG5.png",
  "https://th.bing.com/th/id/R.30ca9669c8b6f374cb2ec479218a5f6c?rik=ORJk7N5jYe4iYQ&pid=ImgRaw&r=0",
  "https://th.bing.com/th/id/R.51f2903974859e8aca6c1245f4f27f57?rik=sl7QRbrXVRvyRA&pid=ImgRaw&r=0",
];

class LocalJson {
  List jsonData = [];
  Future adidasShoes() async {
    final String response = await rootBundle.loadString('json/data.json');
    final data = await json.decode(response);
    print(data);

    return data;
  }
}
