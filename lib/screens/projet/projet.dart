import 'package:flutter/material.dart';
import 'package:mytodoappwithapi/widget/check_list.dart';

class ProjetPage extends StatefulWidget {
  const ProjetPage({super.key});

  @override
  State<ProjetPage> createState() => _ProjetPageState();
}

class _ProjetPageState extends State<ProjetPage> {
  final List<String> entries = <String>[
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];
  final List<int> colorCodes = <int>[
    600,
    500,
    100,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12600,
    500,
    100,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12600,
    500,
    100,
    4,
  ];

  // task for each item in the list view builder (list of projects) en json format (id, name, description, date, ...)

  List allTasks = [
    {
      "idProject": 1,
      "name": "Project 1",
      "tasks": [
        {
          "idProject": 1,
          "name": "Task 1",
          "createdDate": "2021-05-01 12:00:00",
          "endDate": "2021-05-01 12:00:00",
          "status": "En cours",
          "idTeam": 1,
          "idManager": 1,
          "idCreator": 1,
          "idTask": 1,
          "nameTask": "Tache 1",
          "descriptionTask": "Description de la tache 1",
        },
        {
          "idProject": 1,
          "name": "Task 2",
          "createdDate": "2021-05-01 12:00:00",
          "endDate": "2021-05-01 12:00:00",
          "status": "En cours",
          "idTeam": 1,
          "idManager": 1,
          "idCreator": 1,
          "idTask": 2,
          "nameTask": "Tache 2",
          "descriptionTask": "Description de la tache 2",
        },
        {
          "idProject": 1,
          "name": "Task 3",
          "createdDate": "2021-05-01 12:00:00",
          "endDate": "2021-05-01 12:00:00",
          "status": "En cours",
          "idTeam": 1,
          "idManager": 1,
          "idCreator": 1,
          "idTask": 3,
          "nameTask": "Tache 3",
          "descriptionTask": "Description de la tache 3",
        },
        {
          "idProject": 1,
          "name": "Task 4",
          "createdDate": "2021-05-01 12:00:00",
          "endDate": "2021-05-01 12:00:00",
          "status": "En cours",
          "idTeam": 1,
          "idManager": 1,
          "idCreator": 1,
          "idTask": 4,
          "nameTask": "Tache 4",
          "descriptionTask": "Description de la tache 4",
        },
        {
          "idProject": 1,
          "name": "Task 5",
          "createdDate": "2021-05-01 12:00:00",
          "endDate": "2021-05-01 12:00:00",
          "status": "En cours",
          "idTeam": 1,
          "idManager": 1,
          "idCreator": 1,
          "idTask": 5,
          "nameTask": "Tache 5",
          "descriptionTask": "Description de la tache 5",
        },
        {
          "idProject": 1,
          "name": "Task 6",
          "createdDate": "2021-05-01 12:00:00",
          "endDate": "2021-05-01 12:00:00",
          "status": "En cours",
          "idTeam": 1,
          "idManager": 1,
          "idCreator": 1,
          "idTask": 6,
          "nameTask": "Tache 6",
          "descriptionTask": "Description de la tache 6",
        },
        {
          "idProject": 1,
          "name": "Task 7",
          "createdDate": "2021-05-01 12:00:00",
          "endDate": "2021-05-01 12:00:00",
          "status": "En cours",
          "idTeam": 1,
          "idManager": 1,
          "idCreator": 1,
          "idTask": 7,
          "nameTask": "Tache 7",
          "descriptionTask": "Description de la tache 7",
        },
        {
          "idProject": 1,
          "name": "Task 8",
          "createdDate": "2021-05-01 12:00:00",
          "endDate": "2021-05-01 12:00:00",
          "status": "En cours",
          "idTeam": 1,
          "idManager": 1,
          "idCreator": 1,
          "idTask": 8,
          "nameTask": "Tache 8",
          "descriptionTask": "Description de la tache 8",
        },
        {
          "idProject": 1,
          "name": "Task 9",
          "createdDate": "2021-05-01 12:00:00",
          "endDate": "2021-05-01 12:00:00",
          "status": "En cours",
          "idTeam": 1,
          "idManager": 1,
          "idCreator": 1,
          "idTask": 9,
          "nameTask": "Tache 9",
          "descriptionTask": "Description de la tache 9",
        },
        {
          "idProject": 1,
          "name": "Task 10",
          "createdDate": "2021-05-01 12:00:00",
          "endDate": "2021-05-01 12:00:00",
          "status": "En cours",
          "idTeam": 1,
          "idManager": 1,
          "idCreator": 1,
          "idTask": 10,
          "nameTask": "Tache 10",
          "descriptionTask": "Description de la tache 10",
        },
      ]
    },
    {
      "idProject": 2,
      "name": "Project 2",
      "tasks": [
        {
          "idProject": 2,
          "name": "Task 1",
          "createdDate": "2021-05-01 12:00:00",
          "endDate": "2021-05-01 12:00:00",
          "status": "En cours",
          "idTeam": 1,
          "idManager": 1,
          "idCreator": 2,
          "idTask": 1,
          "nameTask": "Tache 8",
          "descriptionTask": "Description de la tache 1",
        },
        {
          "idProject": 2,
          "name": "Task 2",
          "createdDate": "2021-05-01 12:00:00",
          "endDate": "2021-05-01 12:00:00",
          "status": "En cours",
          "idTeam": 1,
          "idManager": 1,
          "idCreator": 1,
          "idTask": 9,
          "nameTask": "Tache 2",
          "descriptionTask": "Description de la tache 2",
        },
        {
          "idProject": 2,
          "name": "Task 1",
          "createdDate": "2021-05-01 12:00:00",
          "endDate": "2021-05-01 12:00:00",
          "status": "Terminé",
          "idTeam": 1,
          "idManager": 2,
          "idCreator": 1,
          "idTask": 3,
          "nameTask": "Tache 3",
          "descriptionTask": "Description de la tache 3",
        },
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              ListTile(
                title: const Text('ListTile with Hero'),
                subtitle: const Text('Tap here for Hero transition'),
                tileColor: Colors.grey[500],
                leading: CircleAvatar(
                  child: Text('$index'),
                ),
                trailing:
                    // icon 3 points
                    PopupMenuButton(
                  onSelected: (String value) {
                    print(value);
                  },
                  icon: const Icon(Icons.more_vert),
                  itemBuilder: (BuildContext context) {
                    return [
                      PopupMenuItem(
                          value: 'info',
                          child: Row(
                            children: const [
                              Icon(Icons.info),
                              SizedBox(width: 10),
                              Text('Info'),
                            ],
                          )),
                      PopupMenuItem(
                        value: 'edit',
                        child: Row(
                          children: const [
                            Icon(Icons.edit),
                            SizedBox(width: 10),
                            Text('Edit'),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: 'delete',
                        child: Row(
                          children: const [
                            Icon(Icons.delete),
                            SizedBox(width: 10),
                            Text('Delete'),
                          ],
                        ),
                      ),
                    ];
                  },
                ),
                onTap: () {
                  print('$index');
                  Map project = allTasks[index];
                  String name = project['name'];
                  print(project);
                  Navigator.push(
                    context,
                    MaterialPageRoute<Widget>(builder: (BuildContext context) {
                      // list tasks
                      const int numItems = 10;
                      List<bool> selected =
                          List<bool>.generate(numItems, (int _index) => false);

                      bool selectedadd = false;
                      // task page for a project
                      return Scaffold(
                        appBar: AppBar(title: const Text('Projet')),
                        body: Center(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: const Text(
                                  "Titre du projet :",
                                  style: TextStyle(fontSize: 30),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const MyStatefulWidget(),
                            ],
                          ),
                        ),
                        floatingActionButton: FloatingActionButton(
                          onPressed: () {
                            print('add task');
                            selectedadd = true;
                          },
                          child: const Icon(
                              Icons.keyboard_double_arrow_up_rounded),
                        ),
                        floatingActionButtonLocation:
                            FloatingActionButtonLocation.centerDocked,
                        bottomNavigationBar: Container(
                          height: selectedadd ? 200 : 50,
                          color: Colors.grey[300],
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  print('add task');
                                },
                                child: const Text('Ajouter une tache'),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  print('add task');
                                },
                                child: const Text('Ajouter une tache'),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  );
                },
              ),
              const Divider(
                height: 20,
              ),
            ],
          );
        },
        itemCount: entries.length,
      ),
    );
  }
}
