import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:spod_app/model/field_order.dart';
import 'package:spod_app/model/user.dart';

class OrdersService {
  var orders = FirebaseFirestore.instance.collection("Orders").withConverter<FieldOrder>(
      fromFirestore: (snapshot, _) => FieldOrder.from(snapshot.data()!),
      toFirestore: (order, _) => order.toJson());

  addOrder(FieldOrder order)async {
     try {
       await orders.doc().set(order);
     } on Exception catch (e) {
       print("no user added");
     }
  }
 getOrder(FieldOrder fieldOrder ){
    try {
        orders.where(FieldOrder.keyuser,isEqualTo: fieldOrder.user).snapshots();
    } on Exception catch (e) {
      // TODO
    }
  }
}
