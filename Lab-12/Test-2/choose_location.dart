import 'package:lab11_12/services/word_time.dart';
import 'package:flutter/material.dart';
class ChooseLocation extends StatefulWidget {
// const ChooseLocation({Key? key}) : super(key: key);
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}
class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;
  List<WordTime> locations=[
    WordTime(location: 'kolkata',flag: 'india.png',url: 'Asia/Kolkata'),
    WordTime(location: 'Vienna',flag: 'austria.png',url: 'Europe/Vienna'),
    WordTime(location: 'Singapore',flag: 'singapore.png',url:
    'Asia/Singapore'),
    WordTime(location: 'Manila',flag: 'philippines.png',url:
    'Asia/Manila'),
    WordTime(location: 'Brisbane',flag: 'australia.png',url:
    'Australia/Brisbane'),
    WordTime(location: 'Madrid',flag: 'spain.png',url: 'Europe/Madrid'),
    WordTime(location: 'Maldives',flag: 'maldives.png',url:
    'Indian/Maldives'),
    WordTime(location: 'Johannesburg',flag: 'south-africa.png',url:
    'Africa/Johannesburg'),
    WordTime(location: 'Barbados',flag: 'barbados.png',url:
    'America/Barbados'),
    WordTime(location: 'Moscow',flag: 'russia.png',url: 'Europe/Moscow')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('CHOOSE LOCATION'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount:locations.length,
          itemBuilder:(context,index) {
            return Padding(
                padding: const EdgeInsets.symmetric(vertical:
                1.0,horizontal: 4.0),
                child: Card(
                  child: ListTile(
                    onTap: (){
                      print(locations[index].location);
                    },
                    title: Text(locations[index].location.toString()),
                    leading: CircleAvatar(
                      backgroundImage:
                      AssetImage('assets/flags/${locations[index].flag}'),
                    ),
                  ),
                ));
          }),
    );
  }
}
