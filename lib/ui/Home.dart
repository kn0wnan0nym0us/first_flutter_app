import 'package:ChatUp/ui/SearchBar.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  Icon actionIcon = Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,

        ),
        title: Text(
          "ChatUp",
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        backgroundColor: Colors.blue.shade800,
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchBar()));
              }),
          // IconButton(
          //     icon: Icon(Icons.menu),
          //     onPressed: () {
          //       Navigator.push(
          //           context, MaterialPageRoute(builder: (context) => Menu()));
          //     }),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue.shade800,
          child: Icon(Icons.add, color: Colors.white),
          onPressed: () => debugPrint("New Message")),
      bottomNavigationBar:
      BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
      ]),
      backgroundColor: Colors.blueGrey.shade200,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
//CustomButton()

//   InkWell(
//   child: Text("Click Here",
//     style: TextStyle(fontStyle: FontStyle.italic,
//       fontSize: 25.0,
//       fontWeight: FontWeight.bold,
//     ),
//   ),
//
//   onTap: () => debugPrint("tapped..."),
// )

// class CustomButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         final snackBar = SnackBar(content: Text("Hello There!"),
//         backgroundColor: Colors.greenAccent.shade400,);
//
//         Scaffold.of(context).showSnackBar(snackBar);
//       },
//       child: Container(
//         padding: EdgeInsets.all(10.0),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(8.0),
//         ),
//         child: Text("Click Here"),
//       ),
//     );
//   }
