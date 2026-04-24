import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: TextStyle(
          color: Colors.blueAccent,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(Icons.videogame_asset, size: 30, color: Colors.blueAccent),
                SizedBox(width: 8),
                Text("Game Manager"),
              ],
            ),
            CircleAvatar(backgroundColor: Colors.grey, radius: 20),
          ],
        ),
      ),
      body: const Center(child: Text('Welcome to the Home Page!')),
    );
  }
}
