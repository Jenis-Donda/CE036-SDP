import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: const Text('Row and Column Layout'),
          centerTitle: true,
          backgroundColor: Colors.red[600],
        ),
        body:Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.green[600],
                padding: EdgeInsets.all(30.0),
                child: Text('1'),
              ),
            ),
            Container(
              color: Colors.orange[600],
              padding: EdgeInsets.all(30.0),
              child: Text('2'),
            ),
            Container(
              color: Colors.limeAccent,
              padding: EdgeInsets.all(30.0),
              child: Text('3'),
            )
          ],
        )
    )
));
