import 'package:flutter/material.dart';
import 'package:mytodoappwithapi/screens/projet/new_project.dart';
import 'package:mytodoappwithapi/screens/projet/projet.dart';
import 'package:mytodoappwithapi/settings/settings.dart';
import 'screens/home.dart';
import 'screens/equipe/equipe.dart';
import 'screens/agenda/agenda.dart';
import 'package:mytodoappwithapi/screens/notification/notification.dart';
import 'screens/profil/profil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentPageIndex = 0;
  bool isAction = false;
  int indexBody = 0;

  void navBody(int index) {
    setState(() {
      if (index > 4) {
        indexBody = index;
      } else {
        currentPageIndex = index;
        indexBody = index;
      }

      print('indexBody: $indexBody');
      print('currentPageIndex: $currentPageIndex');
      print('isAction: $isAction');
    });
  }

  @override
  Widget build(BuildContext context) {
    // here hou have the list of title of the app bar
    final List<String> _titles = <String>[
      'Accueil',
      'Projets',
      'Equipes',
      'Agenda',
      'Profil',
      'Notification',
      'Paramètres',
      'Nouveau projet',
    ];

    // here you have a list that contains all the pages of the bottom navigation bar

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          title: Center(child: Text(_titles[indexBody])),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {
                navBody(5);
                // navigateToActionPage(6);
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                navBody(6);
                // navigateToActionPage(6);
              },
            ),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            navBody(index);
          },
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Accueil',
            ),
            NavigationDestination(
              icon: Icon(Icons.work_outline),
              selectedIcon: Icon(Icons.work_rounded),
              label: 'Projets',
            ),
            NavigationDestination(
              icon: Icon(Icons.groups_outlined),
              selectedIcon: Icon(Icons.groups_rounded),
              label: 'Equipe',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.calendar_month_rounded),
              icon: Icon(Icons.calendar_month_outlined),
              label: 'Agenda',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.account_circle_rounded),
              icon: Icon(Icons.account_circle_outlined),
              label: 'profil',
            ),
          ],
        ),
        body: [
          HomePage(),
          ProjetPage(),
          EquipePage(),
          AgendaPage(),
          ProfilePage(),
          NotifiationPage(),
          SettingPage(),
          NewProject()
        ][indexBody],
        // floatingActionButton: si indexBody ==  1 sinon on affiche pas le bouton

        floatingActionButton: indexBody == 1
            ? FloatingActionButton(
                splashColor: Colors.white,
                tooltip: 'Ajouter un projet',
                // meme couleur que le bouton de la bottom navigation bar (vert)
                backgroundColor: Colors.green[400],

                // Theme.of(context).colorScheme.secondary
                onPressed: () {
                  navBody(7);
                },
                child: const Icon(Icons.add))
            : null,
      ),
    );
  }
}
