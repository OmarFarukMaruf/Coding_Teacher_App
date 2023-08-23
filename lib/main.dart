import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.greenAccent, // Set the accent color
        fontFamily: 'Roboto',

        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: Colors.green), // Set the default font family
        // Add more theme properties as needed
      ),
      home: Scaffold(
        appBar: MyAppBar(),
        body: Center(
          child: Text("Codding Teacher"),
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Icon(Icons.person), // Replace this with your profile icon
          ),
          Row(
            children: [
              Text("Select Bar"),
              Icon(Icons.arrow_drop_down), // Replace with your select icon
            ],
          ),
        ],
      ),
    );
  }
}
