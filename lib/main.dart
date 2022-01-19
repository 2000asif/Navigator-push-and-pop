import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'seconepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vcard'),
        centerTitle: true,
      ),
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/1.jpg'),
              radius: 100,
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              'Soumitro Karmaker',
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Mobile Android Developer',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              child: Divider(
                thickness: 2,
                color: Colors.black,
                height: 30,
              ),
            ),
            Card(
              margin: EdgeInsets.all(20),
              // margin: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
              //margin: EdgeInsets.only(top: ,right: ,left: ,bottom: ),
              child: ListTile(
                title: Text('yourname@gmail.com'),
                leading: Icon(
                  Icons.email,
                  color: Colors.orange,
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(20),
              child: ListTile(
                onTap: () {},
                title: Text('+880182*******'),
                leading: Icon(Icons.phone),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => page()));
              },
              child: Text('Sign In'),
            )
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}