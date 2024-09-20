import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:spod_app/model/user.dart';

class UserService {
  var users = FirebaseFirestore.instance.collection("Users").withConverter<UserModel>(
      fromFirestore: (snapshot, _) => UserModel.from(snapshot.data()!),
      toFirestore: (userModel, _) => userModel.toJson());

  addUser(UserModel user)async {
     try {
       await users.doc().set(user);
     } on Exception catch (e) {
       print("no user added");
     }
  }
  late UserModel user;
  getUser(String uid)async{
    try {
       await users.where(UserModel.keyId,isEqualTo: uid).get().then((value) {
         user =value.docs.map((e) => e.data()).first;
       });
       return user;
    } on Exception catch (e) {
      // TODO
    }
  }
}
