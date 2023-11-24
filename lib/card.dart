import 'package:flutter/material.dart';

class NameCard extends StatelessWidget {
  final String name;
  const NameCard({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    int letterCount = name.replaceAll(" ", "").length;

    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              radius: 20.0, // Adjust the radius as needed
              backgroundColor: Colors.blue, // Circle background color
              child: Icon(
                Icons.account_circle,
                size: 25.0, // Adjust the size of the person icon
                color: Colors.white, // Person icon color
              ),
            ),
          ),
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(name,
             style: TextStyle(
               color: Colors.white,
               fontSize: 20
             )
             ),
             Text('$letterCount Letters',
             style: TextStyle(
               color: Colors.white,
               fontSize: 15
             ),
             )
           ],
         )
        ],
      ),
    );
  }
}
