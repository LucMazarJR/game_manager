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
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(vertical: 15, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(2),
                color: themeColors.primary,
              ),
              child: Padding(
                padding: EdgeInsetsGeometry.all(20),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bem vindo de volta!",
                        style: TextStyle(
                          color: themeColors.onPrimary,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Gerencie sua coleção e encontre seu proximo jogo",
                        style: TextStyle(
                          color: themeColors.primaryContainer,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
