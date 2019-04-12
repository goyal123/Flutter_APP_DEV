import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//import 'dart:async';
//import 'package:http/http.dart' as http;
//import 'dart:convert' as JSON;


void main() => runApp(MyApp());

class MyApp extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    return new  MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.deepPurple),
      home: new HomePage());
  }
}

class HomePage  extends StatelessWidget 
{
  @override
  Widget build(BuildContext context)
   {
    return new Scaffold
    (
      appBar: new AppBar
      (
        title: new Text("Drawer App"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.5 : 0.0,
      ),
      drawer: new Drawer
      (
        child: new ListView
                           (
                             children: <Widget>[
                                                 new UserAccountsDrawerHeader(
                                                                                accountName: new Text("Akhil Goyal"),
                                                                                accountEmail: new Text("akhilg642l@gmail.com"),
                                                                                currentAccountPicture: new CircleAvatar(
                                                                                                                         backgroundColor: Colors.white,
                                                                                                                         child: new Text("Ak"),
                                                                                                                       ),
                                                                                otherAccountsPictures: <Widget>[
                                                                                                                new CircleAvatar(
                                                                                                                                  backgroundColor: Colors.white,
                                                                                                                                  child: new Text("k"),
                                                                                                                                )
                                                                                                                ],
                                                                              ),
                                                  
                                                  new ListTile(
                                                                title: new Text("Page one"),
                                                                trailing: new Icon(Icons.arrow_upward),

                                                              ),
            
                                                  new ListTile(
                                                                title: new Text("Page Two"),
                                                                trailing: new Icon(Icons.arrow_downward),
                                                              ),
                                                  new Divider(),
                                                  new ListTile(
                                                    title: new Text("Close"),
                                                    trailing: new Icon(Icons.close),
                                                    onTap: ()=> Navigator.of(context).pop(),
                                                    
                                                  ),
                                        
                                                 ],
                            ),
      ),

      body: new Container(
                            child: new Center(
                                                child: new Text("Home Page")
                                             ),
                         )
    );
  }
}