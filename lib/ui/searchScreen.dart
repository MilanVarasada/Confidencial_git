import '../widgets/cf_search_appbar.dart';
import 'package:flutter/material.dart';
import '../widgets/cf_tab_view.dart';

class SearchScreen extends StatelessWidget {
  onSwitchValueChanged() {
    print('change');
  }

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
      // appBar: AppBar(
      //   title:TextBox(),
      //   leading: IconButton(
      //     icon: Icon(Icons.search),
      //     onPressed: (){},
      //   ),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextBox(),
          Container(
            height: 80,
            color: Color.fromRGBO(131, 45, 88, 1),
            child: CFTabView(
              firstOptionTitle: 'By Title',
              secondOptionTitle: 'By Artist',
              isHome: false,
              firstOptionAction: onSwitchValueChanged,
              secondOptionAction: onSwitchValueChanged,
            ),
          ),
          Flexible(
            child: ListView.builder(
                padding: EdgeInsets.all(0),
                itemCount: litems.length,
                itemBuilder: (BuildContext ctxt, int index) {
                  return Container(
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
                                      image: AssetImage(
                                          'assets/images/playlistImage.png')))),
                          Text(
                            litems[index],
                            style:
                                TextStyle(fontSize: 18, color: Colors.white70),
                          ),
                        ],
                      ));
                  //  return Text(litems[index],style: TextStyle(backgroundColor: Colors.red),);
                }),
          ),
        ],
      ),
    );
  }
}

class TextBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      alignment: Alignment.center,
      color: Color.fromRGBO(131, 45, 88, 1),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 40,
        color: Colors.transparent,
        child: TextField(
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: 'Search...'),
        ),
      ),
    );
  }
}
