import 'package:pingchat/components/custom_post_container.dart';
import 'package:pingchat/utils/const.dart';

class PostDataModel {
  const PostDataModel(
      {required this.profileImage,
      required this.name,
      required this.time,
      required this.discription,
      required this.postImage});
  final String discription, postImage, name, profileImage, time;
}

List<PostDataModel> postItemsData = [
  PostDataModel(
    name: 'Lina Derby',
    time: 'Today',
    discription: '''Contrary to popular belief, Lorem Ipsum is not
simply random text. It has roots in a piece of... ''',
    postImage: kProfilePostPic,
    profileImage: 'images/postpic.png',
  ),
  PostDataModel(
    name: 'Lina Derby',
    time: 'Today',
    discription: '''Contrary to popular belief, Lorem Ipsum is not
simply random text. It has roots in a piece of... ''',
    postImage: kProfilePostPic,
    profileImage: 'images/postpic.png',
  ),
  PostDataModel(
    name: 'Lina Derby',
    time: 'Today',
    discription: '''Contrary to popular belief, Lorem Ipsum is not
simply random text. It has roots in a piece of... ''',
    postImage: kProfilePostPic,
    profileImage: 'images/postpic.png',
  ),
];

List<CustomPostContainer> postitem = [];
