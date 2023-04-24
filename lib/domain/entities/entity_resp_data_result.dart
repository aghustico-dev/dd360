import 'package:intl/intl.dart';
import 'package:pruebatecnica/domain/entities/entity.dart';

class Result {
    int? id;
    int? digitalId;
    String? title;
    int? issueNumber;
    String? variantDescription;
    String? name;
    String? description;
    DateTime? modified;
    Thumbnail? thumbnail;
    List<Thumbnail?>? images;
    String? resourceURI;
    Comics? comics;
    Comics? creators;
    Series? series;
    Stories? stories;
    Events? events;
    List<Url?>? urls;
    String? isbn;
    String? upc;
    String? diamondCode;
    String? ean;
    String? issn;
    String? format;
    int? pageCount;
    List<TextObjects>? textObjects;
    List<Prices>? prices;

    Result(
      {
        this.id, 
        this.digitalId,
        this.title,
        this.issueNumber,
        this.variantDescription,
        this.name, 
        this.description, 
        this.modified, 
        this.thumbnail, 
        this.resourceURI, 
        this.comics, 
        this.creators,
        this.images,
        this.series, 
        this.stories, 
        this.events, 
        this.urls,
        this.isbn,
        this.upc,
        this.diamondCode,
        this.ean,
        this.issn,
        this.format,
        this.pageCount,
        this.textObjects,
        this.prices,
      }
    ); 

    Result.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        digitalId = json['digitalId'];
        name = json['name'];
        title = json['title'];
        issueNumber = json['issueNumber'];
        variantDescription = json['variantDescription'];
        description = json['description'];
        modified = ( json['fCreacion'] == null ) ? null : DateFormat("yyyy-MM-dd").parse(json['modified'].trim() );
        // modified = json['modified'].toString();
        thumbnail = json['thumbnail'] != null ? Thumbnail?.fromJson(json['thumbnail']) : null;
        resourceURI = json['resourceURI'];
        comics = json['comics'] != null ? Comics?.fromJson(json['comics']) : null;
        series = json['series'] != null ? Series?.fromJson(json['series']) : null;
        stories = json['stories'] != null ? Stories?.fromJson(json['stories']) : null;
        events = json['events'] != null ? Events?.fromJson(json['events']) : null;
        if (json['urls'] != null) {
         urls = <Url>[];
         json['urls'].forEach((v) {
         urls!.add(Url.fromJson(v));
        });
        isbn = json['isbn'];
        upc = json['upc'];
        diamondCode = json['diamondCode'];
        ean = json['ean'];
        issn = json['issn'];
        format = json['format'];
        pageCount = json['pageCount'];
        if (json['textObjects'] != null) {
          textObjects = [];
          json['textObjects'].forEach((v) {
            textObjects!.add(TextObjects.fromJson(v));
          });
        }
        if (json['prices'] != null) {
          prices = [];
          json['prices'].forEach((v) {
            prices!.add(Prices.fromJson(v));
          });
        }
        if (json['images'] != null) {
          images = [];
          json['images'].forEach((v) {
            images!.add(Thumbnail.fromJson(v));
          });
        }
        creators = json['creators'] != null
        ? Comics.fromJson(json['creators'])
        : null;
      }
    }

    // Map<String, dynamic> toJson() {
    //     final Map<String, dynamic> data = <String, dynamic>{};
    //     data['id'] = id;
    //     data['name'] = name;
    //     data['description'] = description;
    //     data['modified'] = modified;
    //     data['thumbnail'] = thumbnail!.toJson();
    //     data['resourceURI'] = resourceURI;
    //     data['comics'] = comics!.toJson();
    //     data['series'] = series!.toJson();
    //     data['stories'] = stories!.toJson();
    //     data['events'] = events!.toJson();
    //     data['urls'] =urls != null ? urls!.map((v) => v?.toJson()).toList() : null;
    //     return data;
    // }
}