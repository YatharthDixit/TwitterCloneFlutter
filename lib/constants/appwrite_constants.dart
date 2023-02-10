class AppwriteConstant {
  static const String databaseID = '63d9693fd2941b2e762a';
  static const String projectID = '63d964875eed66116d87';
  // static const String endPoint = 'http://localhost:80/v1';
  static const String endPoint = 'http://localhost:80/v1';
  static const String userCollectionID = '63e3f09828f378a13ca0';
  static const String tweetsCollectionID = '63e6808c627093554380';
  static const String imagesBucketID = '63e68a04a4942b862a7d';

  static String imageURL(String imageID) {
    return 'http://localhost/v1/storage/buckets/$imagesBucketID/files/$imageID/view?project=$projectID&mode=admin';
  }
}
