import 'package:apna/screens/message_screen.dart';
import 'package:flutter/material.dart';

class ChatCard extends StatefulWidget {
  const ChatCard({Key? key}) : super(key: key);

  @override
  State<ChatCard> createState() => _ChatCardState();
}

class _ChatCardState extends State<ChatCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.04, vertical: 4),
      elevation: 2,
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> MessageScreen()));
        },
        child: ListTile(
          //leading: CircleAvatar(child: Icon(CupertinoIcons.person),),
          selectedTileColor: Colors.purple.withOpacity(0.4),
          tileColor: Colors.purple.withOpacity(0.1),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height* 0.02),
            child: Icon(Icons.person),
              ),
          title: Text("Simran Agarwal"),
          subtitle: Text("Feeling great"),
          // trailing: Text('12:00', style: TextStyle(color: Colors.black54),),
          trailing: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(color: Colors.lightGreen, borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
    );
  }
}
