import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("Home")),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle),title: Text("Profile")),
            BottomNavigationBarItem(icon: Icon(Icons.exit_to_app),title: Text("Exit to app"))
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){
          //setState metodu UI(arayüzü günceller)
          setState(() {
            counter++;//Counter her butona tıklandığında birer birer artar
          });
        }),
        appBar: AppBar(
          title: Text("AppBar"),
          leading: Icon(Icons.menu),
          actions: <Widget>[
            Text("Text",textAlign: TextAlign.center,),
            Icon(Icons.add)
          ],
        ),
        
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("Hi Flutter"),
              new Text("Counter"),
              new Text(counter.toString()),
            ],
          ),
        )
      ),
    );
  }
}
