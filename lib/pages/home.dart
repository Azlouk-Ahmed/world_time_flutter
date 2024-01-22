import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map? data;
  String bgImage = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
  data = ModalRoute.of(context)?.settings.arguments as Map;
  bgImage = data?["isDayTime"] ? "assets/day.png" : "assets/night.png";
  
  print(data);
     return Scaffold(
      backgroundColor: data?["isDayTime"] ? Colors.blue : Colors.indigo[700],
      //appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(bgImage), fit: BoxFit.fill)
        ),
        child: SafeArea(
          
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: Column(
              children: <Widget>[
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  icon: Icon(Icons.edit_location),
                  label: Text(
                    'Edit Location'
                  )
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      data!['location'].toString().toUpperCase(),
                      style: TextStyle(
                        fontSize: 28.0,
                        color: Colors.blue[600],
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Text(
                  data?['time'],
                  style: TextStyle(
                    color: !data?["isDayTime"] ? Colors.white : Colors.black,
                    fontSize: 66.0,
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}