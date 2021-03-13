import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseServices {
   static CollectionReference productCollection = FirebaseFirestore.instance.collection('taniyuk');
  static Future<DocumentSnapshot> getProduct(String id) async {
     return await productCollection.doc(id).get();
   }
}
