class Unstitched {
  Unstitched({
    this.rangeId,
    this.name,
    this.image,
  });

  Unstitched.fromJson(dynamic json) {
    rangeId = json['range_id'];
    name = json['name'];
    image = json['image'];
  }

  String? rangeId;
  String? name;
  String? image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['range_id'] = rangeId;
    map['name'] = name;
    map['image'] = image;
    return map;
  }
}
