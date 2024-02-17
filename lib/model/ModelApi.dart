class ModelApi {
  ModelApi({
    required this.item,
  });
  late final Item item;

  ModelApi.fromJson(Map<String, dynamic> json) {
    item = Item.fromJson(json['item']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['item'] = item.toJson();
    return _data;
  }
}

class Item {
  Item({
    required this.title,
    required this.description,
    required this.link,
    required this.guid,
    required this.pubDate,
    required this.creator,
    required this.enclosure,
  });
  late final String title;
  late final Description description;
  late final String link;
  late final String guid;
  late final String pubDate;
  late final String creator;
  late final String enclosure;

  Item.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = Description.fromJson(json['description']);
    link = json['link'];
    guid = json['guid'];
    pubDate = json['pubDate'];
    creator = json['creator'];
    enclosure = json['enclosure'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['title'] = title;
    _data['description'] = description.toJson();
    _data['link'] = link;
    _data['guid'] = guid;
    _data['pubDate'] = pubDate;
    _data['creator'] = creator;
    _data['enclosure'] = enclosure;
    return _data;
  }
}

class Description {
  Description({
    required this.Cdata,
  });
  late final String Cdata;

  Description.fromJson(Map<String, dynamic> json) {
    Cdata = json['__cdata'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['__cdata'] = Cdata;
    return _data;
  }
}
