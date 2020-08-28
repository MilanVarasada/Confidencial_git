import 'package:flutter/material.dart';

class PlayListScreen extends StatefulWidget {
  static const routeName = '/playList';

  @override
  _PlayListScreenState createState() => _PlayListScreenState();
}

class _PlayListScreenState extends State<PlayListScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> litems = [
      "See You Again, by Wiz Knalifa ft",
      "Uptown Funk",
      "Blank Space",
      "Shake It Off",
      "Lean On",
      "Hello",
      "Roar",
      "Sugar",
      "All About That Bass",
      "See You Again, by Wiz Knalifa ft",
      "Uptown Funk",
      "Blank Space",
      "Shake It Off",
      "Lean On",
      "Hello",
      "Roar",
      "Sugar",
      "All About That Bass"
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Now Playing....'),
        backgroundColor: Colors.black87,
      ),
        body: ListView.builder(
          physics: ClampingScrollPhysics(),
            itemCount: litems.length,
            itemBuilder: (BuildContext ctxt, int index) {
              return Container(
                  width: double.infinity,
                  height: 50.0,
                  color: index % 2 == 0
                      ? Color.fromRGBO(131, 29, 88, 1)
                      : Color.fromRGBO(139, 31, 98, 1),
                  child: Row(
                    children: <Widget>[
                      Container(
                          width: 48.0,
                          height: 48.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/images/playlistImage.png')))),
                      Text(
                        litems[index],
                        style: TextStyle(fontSize: 18, color: Colors.white70),
                      ),
                    ],
                  ));
              //  return Text(litems[index],style: TextStyle(backgroundColor: Colors.red),);
            })
            );
  }
}
