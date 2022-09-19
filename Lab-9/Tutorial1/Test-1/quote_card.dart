import 'package:flutter/material.dart';
import 'package:project_1/quote.dart'; // Absolute path
class QuoteCard extends StatelessWidget {
// Quote quote; // in StatelessWidget can't allowed variable ..
  final Quote quote;
// final void Function() delete; // or you can use following code also

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 10),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 26,
                color: Colors.deepPurple,
              ),
            ),
                      ],
        ),
      ),
    );
  }
}
