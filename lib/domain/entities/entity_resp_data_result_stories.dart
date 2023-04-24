import 'package:pruebatecnica/domain/entities/entity.dart';

class Stories {
  int? available;
  String? collectionURI;
  List<Item?>? items;
  int? returned;

  Stories({this.available, this.collectionURI, this.items, this.returned}); 

  Stories.fromJson(Map<String, dynamic> json) {
      available = json['available'];
      collectionURI = json['collectionURI'];
      if (json['items'] != null) {
        items = <Item>[];
        json['items'].forEach((v) {
        items!.add(Item.fromJson(v));
      });
    }
      returned = json['returned'];
  }

  Map<String, dynamic> toJson() {
      final Map<String, dynamic> data = Map<String, dynamic>();
      data['available'] = available;
      data['collectionURI'] = collectionURI;
      data['items'] =items != null ? items!.map((v) => v?.toJson()).toList() : null;
      data['returned'] = returned;
      return data;
  }
}