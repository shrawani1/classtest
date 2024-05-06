import 'package:classtest/name_button.dart';
import 'package:flutter/material.dart';


class GridViewScreen extends StatelessWidget {
  final String name = "Shrawani";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Grid App'),
      ),
      body: Center(
        child: GridView.count(
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: name
              .split('')
              .map((char) => NameButton(
                    char: char,
                  ))
              .toList(),
        ),
      ),
    );
  }
}