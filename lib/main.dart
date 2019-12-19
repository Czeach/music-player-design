import'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'albumtitle.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final List<String> song = <String> [
    'Intro',
    '1 Milli',
    'Check Am',
    'Disturbance',
    'If',
    'D & G',
    'Get To You',
    'Risky',
    'Sweet In The Middle',
    'Fall',
    'Green Light Riddim',
    'Big Picture',
    'One Thing',
    'Assurance',
    'Blow My Mind',
    'Company',
    'Animashaun'
  ];

  final List<String> artist = <String> [
    'Davido',
    'Davido',
    'Davido',
    'Davido Ft. Peruzzi',
    'Davido',
    'Davido Ft. Summer Walker',
    'Davido',
    'Davido Ft. Popcaan',
    'Davido Ft. Naira Marley, Wurld & Zlatan',
    'Davido',
    'Davido',
    'Davido Ft. Boogie wit da Hoodie, Dremo & Gunna',
    'Davido',
    'Davido',
    'Davido & Chris Brown',
    'Davido',
    'Davido Ft. Yonda'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 28,
                ),
                Container(
                  height: 32,
                  child: Row(
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {('');},
                        color: Colors.black87,
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      Text(
                          'PLAYLIST',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                              fontFamily: 'sans serif',
                              fontWeight: FontWeight.w400
                          ),
                        ),
                      SizedBox(
                        width: 130,
                      ),
                      IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {('');},
                        color: Colors.black87,
                      ),
                    ],
                  ),
                ),
                Album(),
                Container(
                  height: 535,
                  child: ListView.separated(
                    padding: const EdgeInsets.fromLTRB(16, 8, 8, 0),
                    itemCount: song.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 32,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '${song[index]}',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              '${artist[index]}',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[500]
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 2, 8, 2),
                  child: Container(
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.green[900],
                    ),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: Colors.green[700],
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 28, 0, 0),
                              child: Text(
                                '${song[10]}',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 2, 0, 0),
                              child: Text(
                                '${artist[10]}',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 2, 0, 0),
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                  icon:
                                  Icon(Icons.skip_previous),
                                  onPressed: () {('');},
                                iconSize: 38,
                                color: Colors.grey[200],
                                  ),
                              IconButton(
                                    icon:
                                    Icon(Icons.pause),
                                    onPressed: () {('');},
                                iconSize: 38,
                                color: Colors.grey[200],
                                ),
                              IconButton(
                                  icon:
                                  Icon(Icons.skip_next),
                                  onPressed: () {('');},
                                iconSize: 38,
                                color: Colors.grey[200],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
      ),
    );
  }
}