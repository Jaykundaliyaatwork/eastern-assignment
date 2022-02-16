class BoutiqueCollection {
  BoutiqueCollection({
    this.bannerImage,
    this.bannerType,
    this.bannerId,
  });

  BoutiqueCollection.fromJson(dynamic json) {
    bannerImage = json['banner_image'];
    bannerType = json['banner_type'];
    bannerId = json['banner_id'];
  }

  String? bannerImage;
  String? bannerType;
  String? bannerId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['banner_image'] = bannerImage;
    map['banner_type'] = bannerType;
    map['banner_id'] = bannerId;
    return map;
  }
}
