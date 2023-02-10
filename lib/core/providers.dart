import 'package:appwrite/appwrite.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/constants/appwrite_constants.dart';

final appwriteClintProvider = Provider((ref) {
  Client client = Client();
  return client
      .setEndpoint(AppwriteConstant.endPoint)
      .setProject(AppwriteConstant.projectID)
      .setSelfSigned(status: true);
});

final appwriteAccountProvider = Provider(((ref) {
  final client = ref.watch(appwriteClintProvider);
  return Account(client);
}));

final appwriteDatabaseProvider = Provider((ref) {
  final client = ref.watch(appwriteClintProvider);
  return Databases(client);
});

final storageProvider = Provider((ref) {
  final client = ref.watch(appwriteClintProvider);
  return Storage(client);
});
