import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Menu"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Demo"),
              accountEmail: new Text("demo@demo.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.deepOrangeAccent,
                child: new Text("D"),
              ),
            ),
            new ListTile(
              title: new Text("Home Page"),
              trailing: new Icon(Icons.home),
            ),
            new ListTile(
              title: new Text("To do Today"),
              trailing: new Icon(Icons.chat),
            ),
            new ListTile(
              title: new Text("Time Sheet"),
              trailing: new Icon(Icons.calendar_today),
            ),
            new ListTile(
              title: new Text("Employee"),
              trailing: new Icon(Icons.note),
            )
          ],
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(),
                color: Color(0xff507ad4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        child: Text('Check In', style: TextStyle(color: Colors.white24)),
                        color: Colors.blue,
                        splashColor: Colors.lightGreen,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)
                        ),
                        padding: const EdgeInsets.all(20.0),
                        onPressed: (){},
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
