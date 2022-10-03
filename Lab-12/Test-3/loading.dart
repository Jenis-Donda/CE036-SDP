import 'package:lab11_12/services/word_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:http/http.dart';
// import 'dart:convert';
class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);
  @override
  State<Loading> createState() => _LoadingState();
}
class _LoadingState extends State<Loading> {
  void setWordTime() async{
    WordTime timeinstance=WordTime(location: 'kolkata',flag:
    'india.png',url: 'Asia/Kolkata');
    await timeinstance.getTime();
    Navigator.pushReplacementNamed(context, '/home',arguments: {
      'location':timeinstance.location,
      'flag':timeinstance.flag,
      'time':timeinstance.time,
      'isDayTime':timeinstance.isDayTime
    });
  }
  @override
  void initState(){
    super.initState();
    setWordTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        body: Center(
          child:SpinKitFadingCube(
            color: Colors.white,
            size: 50.0,
          ),
        )
    );
  }
}
