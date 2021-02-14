import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MaterialApp(
  home:IdCard(),
));
class IdCard extends StatefulWidget {
  @override
  _IdCardState createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {
  int skillLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: Text("Id Card"),
        centerTitle: true,
        backgroundColor: Colors.black12,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            skillLevel += 1;
          });
        },
        backgroundColor: Colors.grey[800],
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/me.jpg'),
              ),
            ),
            Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                letterSpacing: 2.0,
              ),

            ),
            SizedBox(height: 10.0,),
            Text(
              'Sium',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 20.0,),
            Text(
              'Home Town',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Dhaka',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 20.0,),
            Text(
              'Skill Level',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '$skillLevel',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email_outlined,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'sium.hossain@yahoo.com',
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            )




          ],
        ),
      ),
    );

  }
}


