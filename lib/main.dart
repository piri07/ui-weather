import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Design',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home:HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int temp=20;
  String location = "Delhi";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://d2c7ipcroan06u.cloudfront.net/wp-content/uploads/2019/12/Night-Sky-768x432.jpg"),
          fit: BoxFit.cover
        ),
        border: Border.all(
          color: Colors.black,
          width: 5.0
        ),
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Center(
                  child: Text(
                    temp.toString() +  " °C",
                    style: TextStyle(color:Colors.white,fontSize: 60.0),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(fontSize: 40.0,color: Colors.white),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  width: 350.0,
                  child: TextField(
                    style: TextStyle(fontSize: 25.0,color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Search Another location",
                      hintStyle: TextStyle(fontSize: 15.0,color: Colors.white),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}


