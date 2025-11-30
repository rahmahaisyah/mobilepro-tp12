import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference users = FirebaseFirestore.instance.collection(
    'users',
  );
  Future<void> addUser(String name, String description) {
    return users.add({'name': name, 'description': description});
  }

  Stream<QuerySnapshot> getUsers() {
    return users.snapshots();
  }
}
