import 'package:flutter/material.dart';

//import 'package:lab8_2/quote.dart';
import 'quote.dart'; // due to same directory file no need path

void main() =>
   runApp(MaterialApp(
     home: EchoList(),
   ));

class EchoList extends StatefulWidget {
 const EchoList({Key? key}) : super(key: key);

 @override
 State<EchoList> createState() => _EchoListState();
}

class _EchoListState extends State<EchoList> {
/*
List<String> quotes = [
'The truth is realy pure and never simple',
'I see humans but no humanity',
'The time is always right to do what is right'
];
// List<String> author = [];
*/
/* this will create error..because list is now not of string....
List<String> quotes = [
Quote(text: 'The truth is realy pure and never simple',author:
'jignesh1'),
];
*/
 List<Quote> quotes = [
   Quote(text: 'The truth is realy pure and never simple', author:
   'Jenis'),
   Quote(author: 'Het', text: 'I see humans but no humanity'),
   Quote(text: 'The time is always right to do what is right', author:
   'Vasu'),
 ];

 @override
 Widget build(BuildContext context) {
   return Scaffold(
       backgroundColor: Colors.black87,
       appBar: AppBar(
         title: Text('Quotes'),
         centerTitle: true,
         backgroundColor: Colors.orangeAccent,
       ),
       body: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
       children: quotes.map((quote)=>
      
       Text(
           '${quote.text} -${quote.author}',
            style: TextStyle(
             color: Colors.cyanAccent,
       ),)).toList(),

       ),
   );
 }
}
