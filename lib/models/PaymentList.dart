// To parse this JSON data, do
//
//     final paymentList = paymentListFromJson(jsonString);

import 'dart:convert';

import 'Item.dart';

//PaymentList paymentListFromJson(String str) => PaymentList.fromJson(json.decode(str));

//String paymentListToJson(PaymentList data) => json.encode(data.toJson());

class PaymentList {
    PaymentList({
        required this.page,
        required this.perPage,
        required this.totalItems,
        required this.totalPages,
        required this.items,
    });

    String page;
    String perPage;
    String totalItems;
    String totalPages;
    List<Item> items;

    factory PaymentList.fromJson(Map<String, dynamic> json) => PaymentList(
        page: json["page"],
        perPage: json["perPage"],
        totalItems: json["totalItems"],
        totalPages: json["totalPages"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "page": page,
        "perPage": perPage,
        "totalItems": totalItems,
        "totalPages": totalPages,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
    };
}


