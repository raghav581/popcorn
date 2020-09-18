import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:popcorn/Widgets/appbar.dart';

// Icon cus = Icon(
//   Icons.search,
//   size: 30.0,
//   color: Colors.white,
// );
// Widget search = Text("POPCORN",
//     style: TextStyle(
//       fontFamily: 'Bebas Neue',
//       fontSize: 40,
//     ));



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
// Icon cus = Icon(
//   Icons.search,
//   size: 30.0,
//   color: Colors.white,
// );
// Widget search = Text("POPCORN",
//     style: TextStyle(
//       fontFamily: 'Bebas Neue',
//       fontSize: 40,
//     ));



class _HomeState extends State<Home> {
  @override
  Icon cus = Icon(
  Icons.search,
  size: 30.0,
  color: Colors.white,
);
Widget search = Text("POPCORN",
    style: TextStyle(
      fontFamily: 'Bebas Neue',
      fontSize: 40,
    ));

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Hexcolor('#e23e57'),
    leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
    title: Center(
      child: search,
    ),
    elevation: 20.0,
    actions: <Widget>[
      IconButton(
        padding: EdgeInsets.fromLTRB(0.0, 4.0, 18.0, 0.0),
        // icon: Icon(
        //   Icons.search,
        //   size: 30.0,
        //   color: Colors.white,
        // ),
        onPressed: () {
          setState(() {
          if(this.cus.icon == Icons.search){
            this.cus = Icon(Icons.cancel);
            this.search = TextField(
              textInputAction: TextInputAction.go,
              decoration: InputDecoration(
                
                hintText: "Search A Movie",
              ),
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            );
          }
          else{
            this.cus = Icon(Icons.search);
            this.search = Text("POPCORN",
    style: TextStyle(
      fontFamily: 'Bebas Neue',
      fontSize: 40,
    ));          
          }
          });
        },
        icon: cus,
      ),
    ],
  ),
    );
  }
}
