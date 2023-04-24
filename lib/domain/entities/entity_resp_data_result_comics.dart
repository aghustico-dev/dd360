import 'package:pruebatecnica/domain/entities/entity.dart';

class ResultsComics {
  int? id;
  // int? digitalId;
  
  
  String? resourceURI;
  List<Url>? urls;
  Series? series;
  // List<Variants> variants;
  // List<Null> collections;
  // List<Null> collectedIssues;
  // List<Dates> dates;
  
  Thumbnail? thumbnail;
  // 
  
  Comics? characters;
  Comics? stories;
  Comics? events;

  ResultsComics(
      {id,
      title,
      issueNumber,
      variantDescription,
      description,
      modified,
      
      resourceURI,
      urls,
      series,
      // variants,
      // collections,
      // collectedIssues,
      // dates,
      
      thumbnail,
      // images,
      characters,
      stories,
      events});

  ResultsComics.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    
    
    
    resourceURI = json['resourceURI'];
    if (json['urls'] != null) {
      urls = [];
      json['urls'].forEach((v) {
        urls!.add(Url.fromJson(v));
      });
    }
    series =
        json['series'] != null ? Series.fromJson(json['series']) : null;
    // if (json['variants'] != null) {
    //   variants = List<Variants>();
    //   json['variants'].forEach((v) {
    //     variants.add(Variants.fromJson(v));
    //   });
    // }
    // if (json['collections'] != null) {
    //   collections = List<Null>();
    //   json['collections'].forEach((v) {
    //     collections.add(Null.fromJson(v));
    //   });
    // }
    // if (json['collectedIssues'] != null) {
    //   collectedIssues = List<Null>();
    //   json['collectedIssues'].forEach((v) {
    //     collectedIssues.add(Null.fromJson(v));
    //   });
    // }
    // if (json['dates'] != null) {
    //   dates = List<Dates>();
    //   json['dates'].forEach((v) {
    //     dates.add(Dates.fromJson(v));
    //   });
    // }
    
    thumbnail = json['thumbnail'] != null
        ? Thumbnail.fromJson(json['thumbnail'])
        : null;
    // if (json['images'] != null) {
    //   images = [];
    //   json['images'].forEach((v) {
    //     images.add(Image.fromJson(v));
    //   });
    // }
    
    characters = json['characters'] != null
        ? Comics.fromJson(json['characters'])
        : null;
    stories =
        json['stories'] != null ? Comics.fromJson(json['stories']) : null;
    events =
        json['events'] != null ? Comics.fromJson(json['events']) : null;
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = <String, dynamic>{};
  //   data['id'] = id;
  //   data['digitalId'] = digitalId;
  //   data['title'] = title;
  //   data['issueNumber'] = issueNumber;
  //   data['variantDescription'] = variantDescription;
  //   data['description'] = description;
  //   data['modified'] = modified;
  //   data['isbn'] = isbn;
  //   data['upc'] = upc;
  //   data['diamondCode'] = diamondCode;
  //   data['ean'] = ean;
  //   data['issn'] = issn;
  //   data['format'] = format;
  //   data['pageCount'] = pageCount;
  //   if (textObjects != null) {
  //     data['textObjects'] = textObjects.map((v) => v.toJson()).toList();
  //   }
  //   data['resourceURI'] = resourceURI;
  //   if (urls != null) {
  //     data['urls'] = urls.map((v) => v.toJson()).toList();
  //   }
  //   if (series != null) {
  //     data['series'] = series.toJson();
  //   }
  //   // if (variants != null) {
  //   //   data['variants'] = variants.map((v) => v.toJson()).toList();
  //   // }
  //   // if (collections != null) {
  //   //   data['collections'] = collections.map((v) => v.toJson()).toList();
  //   // }
  //   // if (collectedIssues != null) {
  //   //   data['collectedIssues'] =
  //   //       collectedIssues.map((v) => v.toJson()).toList();
  //   // }
  //   // if (dates != null) {
  //   //   data['dates'] = dates.map((v) => v.toJson()).toList();
  //   // }
  //   if (prices != null) {
  //     data['prices'] = prices.map((v) => v.toJson()).toList();
  //   }
  //   if (thumbnail != null) {
  //     data['thumbnail'] = thumbnail.toJson();
  //   }
  //   // if (images != null) {
  //   //   data['images'] = images.map((v) => v.toJson()).toList();
  //   // }
  //   if (creators != null) {
  //     data['creators'] = creators.toJson();
  //   }
  //   if (characters != null) {
  //     data['characters'] = characters.toJson();
  //   }
  //   if (stories != null) {
  //     data['stories'] = stories.toJson();
  //   }
  //   if (events != null) {
  //     data['events'] = events.toJson();
  //   }
  //   return data;
  // }
}