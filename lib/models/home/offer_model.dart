class OfferModel {
  OfferModel({
    this.bannerImage,
    this.type,
  });

  OfferModel.fromJson(dynamic json) {
    bannerImage = json['banner_image'];
    type = json['type'];
  }

  String? bannerImage;
  String? type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['banner_image'] = bannerImage;
    map['type'] = type;
    return map;
  }
}
