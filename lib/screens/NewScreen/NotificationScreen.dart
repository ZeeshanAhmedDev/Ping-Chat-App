import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pingchat/components/custom_back_arrow_icon.dart';
import 'package:pingchat/utils/const.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Icon(Icons.delete, color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.more_vert_outlined, color: Colors.black),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: CustomBackArrowIcon(),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 7.0),
          child: Text(
            'Notification',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 8),
        color: Colors.white,
        child: Column(
          children: [
            Card(
              elevation: 0,
              child: ListTile(
                title: Text('Notification'),
                subtitle: Text('You have 2 new Notifications'),
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
                itemCount: 4,
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
