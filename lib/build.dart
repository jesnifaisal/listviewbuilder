import 'package:flutter/material.dart';

class build extends StatefulWidget {
  const build({super.key});

  @override
  State<build> createState() => _customState();
}

class _customState extends State<build> {
  @override
  Widget build(BuildContext context) {
    var arrName = ["cat", "apple", "mango", "dog", "green"];

    return Scaffold(
      appBar: AppBar(title: Text("List viewseperate")),
      body: Stack(
        children: [
          ListView.separated(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    arrName[index],
                    style: TextStyle(fontSize: 25),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  height: 100,
                  thickness: 6,
                );
              },
              itemCount: arrName.length)
        ],
      ),
    );
  }
}
