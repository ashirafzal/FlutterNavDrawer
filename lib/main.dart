import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nav_drawer/newpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(),
       /* routes: <String,WidgetBuilder>{
          "/a": (BuildContext context) => new NewPage("Page One"),
        }*/
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var defaultPlatform;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Navigation Drawer"),
        elevation: defaultPlatform == TargetPlatform.android ? 5.0 : 0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("ashirafzal"),
              accountEmail: new Text("ashirafzal96@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,
                child: new Text("A"),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: new Text("A"),
                ),
              ],
            ),
            new Divider(
              height: 30.0,
            ),
            new ListTile(
              title: new Text("Page One"),
              trailing: new Icon(Icons.insert_photo),
              onTap: ()
              {
                //Navigator.of(context).pop();
                //Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(new MaterialPageRoute(builder:
                    (BuildContext context)=> new NewPage("Page One")));
              }
            ),
            new Divider(),
            new ListTile(
              title: new Text("Page Two"),
              trailing: new Icon(Icons.account_box),
                onTap: ()
                {
                  //Navigator.of(context).pop();
                  //Navigator.of(context).pushNamed("/a");
                  Navigator.of(context).push(new MaterialPageRoute(builder:
                      (BuildContext context)=> new NewPage("Page Two")));
                }
            ),
            new Divider(),
            new ListTile(
              title: new Text("Page Three"),
              trailing: new Icon(Icons.add_call),
                onTap: ()
                {
                  //Navigator.of(context).pop();
                  //Navigator.of(context).pushNamed("/a");
                  Navigator.of(context).push(new MaterialPageRoute(builder:
                      (BuildContext context)=> new NewPage("Page Three")));
                }
            ),
            new Divider(),
            new ListTile(
              title: new Text("Page Four"),
              trailing: new Icon(Icons.local_atm),
                onTap: ()
                {
                  //Navigator.of(context).pop();
                  //Navigator.of(context).pushNamed("/a");
                  Navigator.of(context).push(new MaterialPageRoute(builder:
                      (BuildContext context)=> new NewPage("Page Four")));
                }
            ),
            new Divider(),
            new ListTile(
              title: new Text("Page Five"),
              trailing: new Icon(Icons.add_a_photo),
                onTap: ()
                {
                  //Navigator.of(context).pop();
                  //Navigator.of(context).pushNamed("/a");
                  Navigator.of(context).push(new MaterialPageRoute(builder:
                      (BuildContext context)=> new NewPage("Page Five")));
                }
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Home Page"),
        ),
      ),
    );
  }
}
