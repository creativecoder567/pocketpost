// To parse this JSON data, do
//
//     final paymentList = paymentListFromJson(jsonString);

import 'dart:convert';

// PaymentList paymentListFromJson(String str) => PaymentList.fromJson(json.decode(str));
//
// String paymentListToJson(PaymentList data) => json.encode(data.toJson());

class Item {

    String available;
    String collectionId;
    String collectionName;
    // DateTime created;
    String fees;
    String fx;
    String id;
    String payby;
    String receiveby;
    String receivergets;
    bool select;
    // DateTime updated;

    Item({
        required this.available,
        required this.collectionId,
        required this.collectionName,
        // required this.created,
        required this.fees,
        required this.fx,
        required this.id,
        required this.payby,
        required this.receiveby,
        required this.receivergets,
        required this.select,
         // required this.updated,
    });

    factory Item.fromJson(Map<String, dynamic> json) {
       return Item(
            available: json["available"],
            collectionId: json["collectionId"],
            collectionName: json["collectionName"],
            // created: DateTime.parse(json["created"]),
            fees: json["fees"],
            fx: json["fx"],
            id: json["id"],
            payby: json["payby"],
            receiveby: json["receiveby"],
            receivergets: json["receivergets"],
            select: json["select"]
            // updated: DateTime.parse(json["updated"]
            //
            // ),
        );
    }

    Map<String, dynamic> toJson() => {
        "available": available,
        "collectionId": collectionId,
        "collectionName": collectionName,
        // "created": created.toIso8601String(),
        "fees": fees,
        "fx": fx,
        "id": id,
        "payby": payby,
        "receiveby": receiveby,
        "receivergets": receivergets,
        "select": select,
        // "updated": updated.toIso8601String(),
    };
}
