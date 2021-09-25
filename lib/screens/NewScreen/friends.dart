import 'package:flutter/material.dart';

class Friends extends StatefulWidget {
  const Friends({Key? key}) : super(key: key);

  @override
  _FriendsState createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
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
          'Friends',
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
        color: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 8),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Friends Suggestions'),
                  Text('you have 5 new friends suggestions'),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                margin: EdgeInsets.only(bottom: 8),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: CircleAvatar(
                            child: Icon(Icons.more),
                            maxRadius: 30,
                          ),
                        ),
                        Text('Zeeshan'),
                      ],
                    );
                  },
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Card(
                elevation: 0.0,
                child: ListTile(
                  title: Text('MFriends'),
                  subtitle: Text('You have 3 active friends'),
                  trailing: Icon(Icons.cake_sharp),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
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
                                  color:
                                      true ? Colors.greenAccent : Colors.grey,
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
            ),
          ],
        ),
      ),
    );
  }
}
