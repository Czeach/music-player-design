import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<String> song = <String> [
  'Intro',
  '1 Milli',
  'Check am',
];

final List<String> artist = <String> [
  'Davido',
  'Davido',
  'Davido',

];

class Playlist extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListView.separated(
          padding: const EdgeInsets.all(16.0),
          itemCount: song.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Text(
                      '$song'
                  ),
                  Text(
                      '$artist'
                  )
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
          const Divider(

          ),
        ),
      ],
    );
  }
}