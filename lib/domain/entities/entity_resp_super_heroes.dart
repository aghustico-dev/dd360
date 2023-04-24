import 'package:pruebatecnica/domain/entities/entity.dart';

class ResponseSuperHeroes {
    int? code;
    String? status;
    String? copyright;
    String? attributionText;
    String? attributionHTML;
    String? etag;
    Data? data;

    ResponseSuperHeroes({this.code, this.status, this.copyright, this.attributionText, this.attributionHTML, this.etag, this.data}); 

    ResponseSuperHeroes.fromJson(Map<String, dynamic> json) {
        code = json['code'];
        status = json['status'];
        copyright = json['copyright'];
        attributionText = json['attributionText'];
        attributionHTML = json['attributionHTML'];
        etag = json['etag'];
        data = json['data'] != null ? Data?.fromJson(json['data']) : null;
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        data['code'] = code;
        data['status'] = status;
        data['copyright'] = copyright;
        data['attributionText'] = attributionText;
        data['attributionHTML'] = attributionHTML;
        data['etag'] = etag;
        // data['data'] = data.toJson();
        return data;
    }
}