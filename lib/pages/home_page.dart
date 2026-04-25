import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        titleTextStyle: TextStyle(
          color: themeColors.primary,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        shadowColor: Colors.black,
        elevation: 0.5,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(
                  Icons.videogame_asset,
                  size: 30,
                  color: themeColors.primary,
                ),
                SizedBox(width: 8),
                Text("Game Manager"),
              ],
            ),
            CircleAvatar(backgroundColor: Colors.grey, radius: 20),
          ],
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
