import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pingchat/utils/const.dart';

import 'custom_ping_logo.dart';

class CustomPostContainer extends StatefulWidget {
  const CustomPostContainer(
      {this.ProfileImage,
      required this.name,
      required this.time,
      this.discription,
      this.postImage});
  final String? discription, postImage, name, ProfileImage, time;

  @override
  _CustomPostContainerState createState() => _CustomPostContainerState();
}

class _CustomPostContainerState extends State<CustomPostContainer> {
  bool isclick = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.black54,
                      backgroundImage: AssetImage(
                        widget.ProfileImage!,
                        // scale: 22,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.name!),
                          Text(widget.time!),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.02),
                  child: Icon(Icons.more_vert_outlined),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 18),
            child: Text(
              widget.discription!,
              overflow: TextOverflow.ellipsis,
              softWrap: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Image.asset(
              widget.postImage!,
              fit: BoxFit.cover,
              width: 100,
              height: 190,
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isclick ? isclick = false : isclick = true;
                      });
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.06),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.05),
                            child: Text('4 Likes'
                                // isclick ? Icons.favorite : Icons.favorite_border,
                                // color: isclick ? Colors.red : Colors.black,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.19),
                          child: Row(
                            children: [
                              Text('8 Comments'),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.01,
                              ),
                              RawMaterialButton(
                                onPressed: () {},
                                elevation: 0,
                                shape: CircleBorder(),
                                fillColor: Color(0XFF6B6B6B),
                                constraints: BoxConstraints.tightFor(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width *
                                        0.035),
                                child: Text('1 Share'),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  // Icon(Icons.favorite_border),
                  // Icon(Icons.favorite_border),
                ],
              ),

              Divider(
                color: Colors.black54.withOpacity(0.1),
                thickness: 2,
              ),
              // Row(
              //   children: [
              //     GestureDetector(
              //       onTap: () {
              //         setState(() {
              //           isclick ? isclick = false : isclick = true;
              //         });
              //       },
              //       child: Row(
              //         mainAxisSize: MainAxisSize.min,
              //         children: [
              //           Padding(
              //             padding: EdgeInsets.only(
              //                 left: MediaQuery.of(context).size.width * 0.06),
              //             child: Text('4 Likes'
              //                 // isclick ? Icons.favorite : Icons.favorite_border,
              //                 // color: isclick ? Colors.red : Colors.black,
              //                 ),
              //           ),
              //           Padding(
              //             padding: EdgeInsets.only(
              //                 left: MediaQuery.of(context).size.width * 0.45),
              //             child: Row(
              //               children: [
              //                 Text('8 Comments'),
              //                 SizedBox(
              //                   width: MediaQuery.of(context).size.width * 0.02,
              //                 ),
              //                 Text('1 Share'),
              //               ],
              //             ),
              //           )
              //         ],
              //       ),
              //     ),
              //     // Icon(Icons.favorite_border),
              //     // Icon(Icons.favorite_border),
              //   ],
              // ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.hand_thumbsup_fill,
                        color: Colors.black12,
                        size: 16,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      Text('Like'),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(kCommentMessage),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      Text('Comment'),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(kShareIcon),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      Text('Share'),
                    ],
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
        ],
      ),
    );
  }
}
