import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "Bienvenue sur mon application",
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),

          Center(
            child: Image.asset(
              // url de l'image
              'profile.png',
              // largeur de l'image
              width: MediaQuery.of(context).size.width * 0.5,
              // hauteur de l'image
              height: MediaQuery.of(context).size.height * 0.5,
            ),
          ),
          // button qui redirige vers un lien web avec le logo de github
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1),
            child: ElevatedButton(
                onPressed: () {
                  // redirige vers un lien web
                  Navigator.pushNamed(context, 'https://google.com');
                },
                child: Center(
                  child: Row(
                    children: [
                      Image.asset(
                        // url de l'image
                        'github-logo.png',
                        // largeur de l'image
                        width: MediaQuery.of(context).size.width * 0.1,
                        // hauteur de l'image
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const SizedBox(
                        width: 200,
                        child: Text(
                          "Acceder à mon github",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
