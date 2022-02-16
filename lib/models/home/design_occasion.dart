class DesignOccasion {
  DesignOccasion({
    this.productId,
    this.name,
    this.image,
    this.subName,
    this.cta,
  });

  DesignOccasion.fromJson(dynamic json) {
    productId = json['product_id'];
    name = json['name'];
    image = json['image'];
    subName = json['sub_name'];
    cta = json['cta'];
  }

  String? productId;
  String? name;
  String? image;
  String? subName;
  String? cta;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['product_id'] = productId;
    map['name'] = name;
    map['image'] = image;
    map['sub_name'] = subName;
    map['cta'] = cta;
    return map;
  }
}
