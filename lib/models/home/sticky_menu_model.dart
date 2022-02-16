class StickyMenu {
  StickyMenu({
    this.title,
    this.image,
    this.sortOrder,
    this.sliderImages,
  });

  StickyMenu.fromJson(dynamic json) {
    title = json['title'];
    image = json['image'];
    sortOrder = json['sort_order'];
    if (json['slider_images'] != null) {
      sliderImages = [];
      json['slider_images'].forEach((v) {
        sliderImages?.add(SliderImages.fromJson(v));
      });
    }
  }

  String? title;
  String? image;
  String? sortOrder;
  List<SliderImages>? sliderImages;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['image'] = image;
    map['sort_order'] = sortOrder;
    if (sliderImages != null) {
      map['slider_images'] = sliderImages?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class SliderImages {
  SliderImages({
    this.title,
    this.image,
    this.sortOrder,
    this.cta,
  });

  SliderImages.fromJson(dynamic json) {
    title = json['title'];
    image = json['image'];
    sortOrder = json['sort_order'];
    cta = json['cta'];
  }

  String? title;
  String? image;
  String? sortOrder;
  String? cta;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['image'] = image;
    map['sort_order'] = sortOrder;
    map['cta'] = cta;
    return map;
  }
}
