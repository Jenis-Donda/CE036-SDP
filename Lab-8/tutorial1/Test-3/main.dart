import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: const Text('Row widget'),
          centerTitle: true,
          backgroundColor: Colors.red[600],
        ),
        body:
        Row(
          children: [
            Text('ROW HERE'),
            FlatButton(
              onPressed: () {},
              color: Colors.purple,
              child: Text('Flat Button'),
            ),
            Container(
              color: Colors.cyanAccent,
              padding: EdgeInsets.all(30.0),
              child: Text('Inside Container'),
            )
          ],
        )
    )
));

