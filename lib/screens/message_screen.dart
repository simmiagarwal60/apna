import 'package:flutter/material.dart';

import '../widgets/message_card.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          flexibleSpace: _appBar(),
        ),
        backgroundColor: Color(0xffF3E4FD),
        body: Column(
          children: [
            Expanded(
              child:ListView.builder(
                            physics: BouncingScrollPhysics(),
                            itemCount: 4,
                            padding: EdgeInsets.only(top: 10),
                            itemBuilder: (context, index){
                              return MessageCard();
                            }),


            ),
            _chatInput(),
          ],
        ),
      ),
    );
  }
  Widget _appBar(){
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back, color: Colors.black,)),
          ClipRRect(
            borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height* 0.03),
            child: Icon(Icons.person),
          ),
          SizedBox(width: 10,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Simran Agarwal ", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _chatInput(){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.01, horizontal: MediaQuery.of(context).size.width*0.025 ),
      child: Row(
        children: [
          Expanded(
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.emoji_emotions, color: Colors.purple.shade400,)),
                  Expanded(
                      child: TextField(
                        controller: textController,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                            hintText: 'Type Something...',
                            hintStyle: TextStyle(color: Colors.purple.shade400),
                            border: InputBorder.none
                        ),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.image, color: Colors.purple.shade400,)),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.camera_alt_rounded, color: Colors.purple.shade400,)),
                  SizedBox(width: MediaQuery.of(context).size.width*0.02,)
                ],
              ),
            ),
          ),
          MaterialButton(
            onPressed: (){},
            minWidth: 0,
            padding: const EdgeInsets.only(top: 10, bottom: 10, right: 5,left: 10),
            shape: CircleBorder(),
            color: Colors.green,
            child: Icon(Icons.send, color: Colors.white, size: 25,),)
        ],

      ),
    );
  }
}
