import 'dart:convert';

Checker checkerFromJson(String str) => Checker.fromJson(json.decode(str));

String checkerToJson(Checker data) => json.encode(data.toJson());

class Checker {
  Checker({
    this.recall,
    this.totalQueries,
    this.plagPercent,
    this.uniquePercent,
    this.details,
  });

  bool recall;
  int totalQueries;
  int plagPercent;
  int uniquePercent;
  List<Detail> details;

  factory Checker.fromJson(Map<String, dynamic> json) => Checker(
    recall: json["recall"],
    totalQueries: json["totalQueries"],
    plagPercent: json["plagPercent"],
    uniquePercent: json["uniquePercent"],
    details: List<Detail>.from(json["details"].map((x) => Detail.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "recall": recall,
    "totalQueries": totalQueries,
    "plagPercent": plagPercent,
    "uniquePercent": uniquePercent,
    "details": List<dynamic>.from(details.map((x) => x.toJson())),
  };
}

class Detail {
  Detail({
    this.query,
    this.error,
    this.unique,
    this.webs,
  });

  String query;
  int error;
  String unique;
  List<Web> webs;

  factory Detail.fromJson(Map<String, dynamic> json) => Detail(
    query: json["query"],
    error: json["error"],
    unique: json["unique"],
    webs: json["webs"] == null ? null : List<Web>.from(json["webs"].map((x) => Web.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "query": query,
    "error": error,
    "unique": unique,
    "webs": webs == null ? null : List<dynamic>.from(webs.map((x) => x.toJson())),
  };
}

class Web {
  Web({
    this.title,
    this.url,
    this.des,
  });

  String title;
  String url;
  String des;

  factory Web.fromJson(Map<String, dynamic> json) => Web(
    title: json["title"],
    url: json["url"],
    des: json["des"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "url": url,
    "des": des,
  };
}
