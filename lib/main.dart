import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player_mock_up/playlist.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'PLAYLIST',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black87,
              fontFamily: 'ariel',
              fontWeight: FontWeight.w300
            ),
          ),
          bottomOpacity: 0.0,
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(icon: Icon(Icons.arrow_back_ios),
              onPressed: () {('');},
            color: Colors.black87,
              ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {('');},
              color: Colors.black87,
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 2, 0, 0),
                  child: Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/album.jpg')
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                        shape: BoxShape.rectangle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5.0,
                              spreadRadius: 0.5,
                              offset: Offset(0.5, 0.5)
                          )
                        ]
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(13, 30, 0, 0),
                  child: Container(
                    width: 150.0,
                    height: 70.0,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'A Good Time',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            //fontFamily: 'times new roman'
                          ),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.shuffle,
                              color: Colors.black87,
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                            Text(
                              'Shuffle',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Arial'
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Playlist(),
          ],
        ),
      ),
    );
  }
}