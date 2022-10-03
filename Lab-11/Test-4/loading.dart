import 'package:lab11_12/services/word_time.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Loading extends StatefulWidget {
 const Loading({Key? key}) : super(key: key);
 @override
 State<Loading> createState() => _LoadingState();
}
class _LoadingState extends State<Loading> {
 void setWorldTime() async{
 WordTime timeinstance=WordTime(location: 'kolkata',flag: 
'india.png',url: 'Asia/Kolkata');
 await timeinstance.getTime();
 Navigator.pushNamed(context, '/home',arguments: {
 'location':timeinstance.location,
 'flag':timeinstance.flag,
 'time':timeinstance.time,
 });
 }
 @override
 void initState(){
 super.initState();
 setWorldTime();
 }
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 backgroundColor: Colors.black87,
 body: Center(
 child:SpinKitCircle(
 color: Colors.white,
 size: 50.0,
 ),
 )
 );
 }
}
