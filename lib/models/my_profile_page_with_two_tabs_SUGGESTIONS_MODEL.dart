class CatalogModel {
  static List<BackgroundImages> backgrounds = [];
}

class BackgroundImages {
  var imageUrl;
  var title;
  var button1;
  var button2;

  BackgroundImages(
      {required this.imageUrl,
      required this.title,
      required this.button1,
      required this.button2});
  final image1 = BackgroundImages(
      imageUrl: 'images/pic_001.png',
      title: 'Jenis Dens',
      button1: 'Add',
      button2: 'Remove');
  final image2 = BackgroundImages(
      imageUrl: 'images/pic_002.png',
      title: 'Elena Decruz',
      button1: 'Add',
      button2: 'Remove');
  final image3 = BackgroundImages(
      imageUrl: 'images/pic_003.png',
      title: 'Jack Harmen',
      button1: 'Add',
      button2: 'Remove');
  final image4 = BackgroundImages(
      imageUrl: 'images/pic_004.png',
      title: 'Ren Dens',
      button1: 'Add',
      button2: 'Remove');
  final image5 = BackgroundImages(
      imageUrl: 'images/pic_005.png',
      title: 'Julia Dens',
      button1: 'Add',
      button2: 'Remove');
  final image6 = BackgroundImages(
      imageUrl: 'images/pic_006.png',
      title: 'Jenis Dens',
      button1: 'Add',
      button2: 'Remove');
  final image7 = BackgroundImages(
      imageUrl: 'images/pic_007.png',
      title: 'Jenis Dens',
      button1: 'Add',
      button2: 'Remove');
  final image8 = BackgroundImages(
      imageUrl: 'images/pic_008.png',
      title: 'Elena Decruz',
      button1: 'Add',
      button2: 'Remove');
  final image9 = BackgroundImages(
      imageUrl: 'images/pic_009.png',
      title: 'Jack Harmen',
      button1: 'Add',
      button2: 'Remove');
  // factory BackgroundImages.fromMap(Map<dynamic, dynamic> map) {
  //   return BackgroundImages(imageUrl: map['photo']);
  // }
}
