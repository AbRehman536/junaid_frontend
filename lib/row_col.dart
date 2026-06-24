import 'package:flutter/material.dart';

class RowCol extends StatelessWidget {
  const RowCol({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Col"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.5),
                     // borderRadius: BorderRadius.circular(20)
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.red,width: 2)
                    ),
                    child: Icon(Icons.person)),
                SizedBox(width: 10,),
                Column(
                  children: [
                    Text("Junaid"),
                    Text("Islamabad")
                  ],
                ),
                SizedBox(width: 150,),
                Icon(Icons.menu)
              ],
            ),
            SizedBox(height: 10,),
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966, when designers at Letraset and James Mosley, the librarian at St Bride Printing Library in London, took a 1914 Cicero translation and scrambled it to make dummy text for Letraset's Body Type sheets. It has survived not only many decades, but also the leap"),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.favorite),
                Icon(Icons.comment),
                Icon(Icons.share),
                Icon(Icons.book),
              ],
            )
          ],
        ),
      )
    );
  }
}
