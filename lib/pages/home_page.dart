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
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
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
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: BoxBorder.all(
                  color: const Color.fromARGB(255, 200, 200, 200),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sua Biblioteca",
                          style: TextStyle(
                            color: themeColors.onSurface,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "X jogos em sua\nbiblioteca",
                          style: TextStyle(
                            color: themeColors.primary,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: themeColors.primaryContainer,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3),
                        child: Icon(
                          Icons.list_rounded,
                          color: themeColors.onPrimaryContainer,
                          size: 35,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jogando no Momento:",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
                SizedBox(height: 3),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: BoxBorder.all(
                      color: Colors.grey[300] ?? Colors.grey,
                    ),
                    color: Colors.grey[200],
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[300] ?? Colors.grey,
                            ),
                          ),
                          width: double.infinity,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 150,
                                width: double.infinity,
                                child: Image(
                                  image: AssetImage('images/darksouls.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          "DarkSouls",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[900],
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
