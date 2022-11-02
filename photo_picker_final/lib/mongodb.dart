// import 'dart:developer';

// import 'package:mongo_dart/mongo_dart.dart';

// import 'constants.dart';

// class MongoDatabase {
//   static connect() async {
//     var db = await Db.create(MONGO_URL);
//     await db.open();
//     inspect(db);
//     var status = db.serverStatus();
//     print(status);
//     var collection = db.collection(COLLECTION_NAME);
//     await collection.insertMany([
//       {"username": "test1", "name": "123456"},
//       {"username": "test1", "name": "123456"}
//     ]);
//     print(await collection.find().toList());
//   }
// }
