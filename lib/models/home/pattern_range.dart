class PatternRange {
  PatternRange({
    this.productId,
    this.image,
    this.name,
  });

  PatternRange.fromJson(dynamic json) {
    productId = json['product_id'];
    image = json['image'];
    name = json['name'];
  }

  String? productId;
  String? image;
  String? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['product_id'] = productId;
    map['image'] = image;
    map['name'] = name;
    return map;
  }
}
