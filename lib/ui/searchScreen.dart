import 'package:flutter/material.dart';
import '../widgets/cf_tab_view.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  var isByTitleSelected = true;

 byTitleSelected() {
   setState(() {
      isByTitleSelected = true;
   });
   
  }

  byArtistSelected(BuildContext context) {
    setState(() {
       isByTitleSelected = false;
       print(isByTitleSelected);
    });
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

    List<String> singerName = [
      "Rihanna",
      "Adele",
      "Beyonce",
      "Taylor Swift",
      "Justin Bieber",
      "Lady Gaga",
      "Chris Brown",
      "Jennifer Lopez",
      "Katy Perry",
      "Enrique Iglesias",
      "Shakira",
      "Rihanna",
      "Adele",
      "Beyonce",
      "Taylor Swift",
      "Justin Bieber",
      "Lady Gaga",
      "Chris Brown",
      "Jennifer Lopez",
      "Katy Perry",
      "Enrique Iglesias",
      "Shakira",
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
              firstOptionAction: byTitleSelected,
              secondOptionAction: (){
                byArtistSelected(context);
              },
            ),
          ),
          Flexible(
            child: ListView.builder(
              physics: ClampingScrollPhysics(),
                padding: EdgeInsets.all(0),
                itemCount: isByTitleSelected ? litems.length : singerName.length,
                itemBuilder: (BuildContext ctxt, int index) {
                  return isByTitleSelected ? Container(
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
                      )) : Container(
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
                            singerName[index],
                            style:
                                TextStyle(fontSize: 22, color: Colors.white,fontWeight: FontWeight.w300),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              '42 songs',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ),
                        ],
                      )
                      );
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
        height: 80,
        color: Colors.transparent,
        child: TextField(
          style: TextStyle(fontSize: 22, color: Colors.black54),
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(50.0)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(50.0)),
                  prefixIcon: IconButton(
      icon: new Image.asset('assets/images/search.png',width: 20.0,height: 20.0,),
      onPressed: null,
    ),
              hintText: 'Search...',
              hintStyle: TextStyle(fontSize: 22.0, color: Colors.black54)),
        ),
      ),
    );
  }
}
