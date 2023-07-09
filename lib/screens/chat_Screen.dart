import 'package:flutter/material.dart';

import '../widgets/chat_card.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Chat', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert))],
        backgroundColor: Colors.purple.withOpacity(0.3),
        toolbarHeight: 40,
      ),
      body: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.only(top: 10),
                    itemCount: 4,
                    itemBuilder: (context, index){
                      return ChatCard();
                    }),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: FloatingActionButton(
          onPressed: (){},
          child:Icon(Icons.add_comment_rounded),
        ),
      ),
    );
  }
}
