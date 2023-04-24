import 'package:pruebatecnica/domain/entities/entity.dart';

class Data {
  int? offset;
  int? limit;
  int? total;
  int? count;
  dynamic results;

  Data({this.offset, this.limit, this.total, this.count, this.results}); 

  Data.fromJson(Map<String, dynamic> json) {
    offset = json['offset'];
    limit = json['limit'];
    total = json['total'];
    count = json['count'];
    if (json['results'] != null) {
      results = <Result>[];
      json['results'].forEach((v) {
        results!.add(Result.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['offset'] = offset;
    data['limit'] = limit;
    data['total'] = total;
    data['count'] = count;
    data['results'] =results != null ? results!.map((v) => v?.toJson()).toList() : null;
    return data;
  }
}