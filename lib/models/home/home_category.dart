class HomeCategory {
  HomeCategory({
    this.categoryId,
    this.name,
    this.tintColor,
    this.image,
    this.sortOrder,
  });

  HomeCategory.fromJson(dynamic json) {
    categoryId = json['category_id'];
    name = json['name'];
    tintColor = json['tint_color'];
    image = json['image'];
    sortOrder = json['sort_order'];
  }

  String? categoryId;
  String? name;
  String? tintColor;
  String? image;
  String? sortOrder;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['category_id'] = categoryId;
    map['name'] = name;
    map['tint_color'] = tintColor;
    map['image'] = image;
    map['sort_order'] = sortOrder;
    return map;
  }
}
