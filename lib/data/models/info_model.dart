class InfoModel{
  int? count;
  int? pages;
  String? next;
  Null? prev;

  InfoModel({this.count, this.pages, this.next, this.prev});

  InfoModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    pages = json['pages'];
    next = json['next'];
    prev = json['prev'];
}}