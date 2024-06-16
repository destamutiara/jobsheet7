import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halo Dunia',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Halo Dunia'),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                decoration: BoxDecoration(
                  color: Colors.cyan[50],
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 5,
                      offset: Offset(40, 30),
                      blurRadius:7,
                    )
                  ],
                  ),
                child: TeksUtama(),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Random',
          child: Icon(Icons.refresh),
          onPressed: () {
            // Do nothing here because the state management is handled internally by TeksUtama
          },
        ),
      ),
    );
  }
}

class TeksUtama extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StateTeksUtama();
}

class StateTeksUtama extends State<TeksUtama> {
  var listNama = [
    'Desta', 'Andi', 'Sari', 'Rudi',
    'Nurul', 'Huda', 'Lendis', 'Fabri'
  ];

  var listWarna = [
    Colors.blue, Colors.purple, Colors.teal, Colors.lime,
    Colors.indigo, Colors.deepPurple, Colors.cyan, Colors.red
  ];

  int index = 0;

  void incrementIndex() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Apa kabar',
          textDirection: TextDirection.ltr,
        ),
        Text(
          listNama[index % listNama.length],
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            color: listWarna[index % listWarna.length],
          ),
        ),
      ],
    );
  }
}
