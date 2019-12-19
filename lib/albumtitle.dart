import'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Album extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
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
        );
  }
}