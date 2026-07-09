import 'package:flutter/material.dart';
import 'package:junaid_frontend/models/listModel.dart';

class ListviewScreen extends StatefulWidget {
  const ListviewScreen({super.key});

  @override
  State<ListviewScreen> createState() => _ListviewScreenState();
}

class _ListviewScreenState extends State<ListviewScreen> {
  List<ListModel> chatList = [
    ListModel(name: "Junaid", msg: "How are you?"),
    ListModel(name: "Ali", msg: "Hello,How are you?"),
    ListModel(name: "Ahmed", msg: "Hello"),
    ListModel(name: "Imran", msg: "How are you?"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chats"),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.grey,
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/car1.jpg"),
              ),
              title: Text(chatList[index].name.toString()),
              subtitle: Text(chatList[index].msg.toString()),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
          );
        },
      ),
    );
  }
}
