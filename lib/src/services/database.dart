import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService{

   final String uid;


  DatabaseService({this.uid });

  // collection reference
  final CollectionReference userCollection = Firestore.instance.collection('user');

  Future updateUserData(String firstname , String lastname , String occupation) async {
     return await userCollection.document(uid).setData({
       'firstname': firstname,
       'lastname': lastname,
       'occupation': occupation,
     });
   }


}