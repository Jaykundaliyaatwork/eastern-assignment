class CategoryModel {
  CategoryModel({
    this.categoryId,
    this.categoryName,
    this.parentId,
    this.child,
  });

  CategoryModel.fromJson(dynamic json) {
    categoryId = json['category_id'];
    categoryName = json['category_name'];
    parentId = json['parent_id'];
    if (json['child'] != null) {
      child = [];
      json['child'].forEach((v) {
        child?.add(Child.fromJson(v));
      });
    }
    isExpandable = json['child'].length > 0 ? true : false;
  }

  String? categoryId;
  String? categoryName;
  String? parentId;
  List<Child>? child;
  bool isExpandable = false;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['category_id'] = categoryId;
    map['category_name'] = categoryName;
    map['parent_id'] = parentId;
    if (child != null) {
      map['child'] = child?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Child {
  Child({
    this.categoryId,
    this.categoryName,
    this.parentId,
  });

  Child.fromJson(dynamic json) {
    categoryId = json['category_id'];
    categoryName = json['category_name'];
    parentId = json['parent_id'];
  }

  String? categoryId;
  String? categoryName;
  String? parentId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['category_id'] = categoryId;
    map['category_name'] = categoryName;
    map['parent_id'] = parentId;
    return map;
  }
}
