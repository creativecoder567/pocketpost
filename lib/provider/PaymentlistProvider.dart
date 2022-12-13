import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:pocketpost/models/Item.dart';
import 'package:pocketpost/models/PaymentList.dart';
import 'package:pocketpost/pocketbase/posts.dart';

class PaymentListProvider with ChangeNotifier{

  List<Item> _items = [];

  List<Item> get items => _items;

  // getPosts() async {
  //   List<RecordModel> result = await MyPocketBase.getPosts();
  //   result.map((post) {
  //     post.data['id'] = post.id;
  //     Post _post = Post.fromJson(post.data);
  //     addPost(_post);
  //   }).toList();
  //   notifyListeners();
  // }

  getItems() async {
    List<RecordModel> result = await MyPocketBase.getPaymentItems();
    // print(result);
   result.map((item){
     item.data['id'] = item.id;
     // PaymentList _item = PaymentList.fromJson(item.data);
     // print(item.data);
     Item _item = Item.fromJson(item.data);
     print(_item);
     additems(_item);

   }).toList();
  }

  void additems(Item item) {
    _items.add(item);
    notifyListeners();
  }
}