import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: FinalTest1(),
));
class FinalTest1 extends StatelessWidget {
// const FinalTest1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text('First App'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 0.0,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10.0,top: 30.0,bottom: 20.0),
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left:85),
              child:CircleAvatar(
                backgroundImage: AssetImage('assets/sub_assets/jenis.jpg'),
                radius: 60.0,
              ),
            ),

            Padding(
                padding: EdgeInsets.only(top:50),
                child:Text(
                  'NAME: ',
                  style: TextStyle(
                    color: Colors.white70,
                    letterSpacing: 2.0,

                  ),)
            ),
            SizedBox(height: 10),
            Text(
              'Jenis Donda',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 40),
            Text(
              'AGE',
              style: TextStyle(
                color: Colors.white70,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10),
            Text(

              '20',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                Icon(
                  Icons.email_rounded,
                  color: Colors.yellow,
                ),
                SizedBox(width: 12.0),
                Text(
                  'jenisdonda012@gmail.com',

                  style: TextStyle(

                    color: Colors.white,
                    fontSize: 16.0,
                    letterSpacing: 1.5,

                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
