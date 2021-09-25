import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              size: 12,
              color: Colors.grey,
            )),
        automaticallyImplyLeading: true,
        title: Text(
          'Message',
          style: TextStyle(color: Colors.grey),
        ),
        actions: [
          Icon(
            Icons.search_off,
            color: Colors.grey,
          ),
          Icon(
            Icons.more_vert_outlined,
            color: Colors.grey,
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 8),
        color: Colors.white,
        child: Column(
          children: [
            Card(
              elevation: 0,
              child: ListTile(
                title: Text('Messages'),
                subtitle: Text('You have 2 new messages'),
                trailing: Icon(Icons.cake_sharp),
              ),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 0.5,
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: Divider(),
                    ),
                  );
                },
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(
                    children: [
                      ListTile(
                        title: Text("Battery Full"),
                        subtitle: Text("The battery is full."),
                        leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
                        trailing: Text('Now'),
                      ),
                      Positioned(
                        top: 10.0,
                        left: 46.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          height: 11,
                          width: 11,
                          child: Center(
                            child: Container(
                              decoration: BoxDecoration(
                                color: true ? Colors.greenAccent : Colors.grey,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              height: 7,
                              width: 7,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
