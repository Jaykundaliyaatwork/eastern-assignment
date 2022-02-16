import 'package:get/get.dart';

import '../../models/home/boutique_collection.dart';
import '../../models/home/design_occasion.dart';
import '../../models/home/home_category.dart';
import '../../models/home/offer_model.dart';
import '../../models/home/pattern_range.dart';
import '../../models/home/unstitched.dart';
import '../../services/api_service.dart';
import '../../utils/log_messenger.dart';
import '../models/home/sticky_menu_model.dart';

class HomeController extends GetxController {
  // call it self
  static HomeController get homeController => Get.find();
  RxBool isScreenLoading = false.obs;
  final ApiService _apiService = ApiService();

  // top level
  RxList<StickyMenu> homeStickyMenuList = <StickyMenu>[].obs;
  RxList<OfferModel> offerCodeBannerList = <OfferModel>[].obs;

  // middle level
  RxList<HomeCategory> homeCategoryList = <HomeCategory>[].obs;
  RxList<Unstitched> unstitchedList = <Unstitched>[].obs;
  RxList<BoutiqueCollection> boutiqueCollection = <BoutiqueCollection>[].obs;

  // bottom level
  RxList<PatternRange> patternRangeList = <PatternRange>[].obs;
  RxList<DesignOccasion> designOccasionList = <DesignOccasion>[].obs;

  @override
  void onInit() {
    super.onInit();
    _fetchHomeApiDocumentData();
  }

  Future<void> _fetchHomeApiDocumentData() async {
    isScreenLoading(true);
    try {
      await _fetchAllHomeTopData();
      await _fetchAllHomeMiddleData();
      await _fetchAllHomeBottomData();
      isScreenLoading(false);
    } catch (e) {
      isScreenLoading(false);
      shootLog(e.toString());
    }
  }

  Future<void> _fetchAllHomeTopData() async {
    try {
      Map<String, dynamic> result =
      await _apiService.fetchAllHomeTopLevelData();
      if (result.isNotEmpty) {
        homeStickyMenuList.clear();
        offerCodeBannerList.clear();

        /// add sticky menu items from api response into [homeStickyMenuList].
        for (final stickyMenu in result['main_sticky_menu']) {
          homeStickyMenuList.add(
            StickyMenu.fromJson(stickyMenu),
          );
        }

        /// add offers items from api response into [offerCodeBannerList].
        for (final offer in result['offer_code_banner']) {
          offerCodeBannerList.add(
            OfferModel.fromJson(offer),
          );
        }
      }
    } catch (e) {
      shootLog(e.toString());
    }
  }

  Future<void> _fetchAllHomeMiddleData() async {
    try {
      Map<String, dynamic> result =
      await _apiService.fetchAllHomeMiddleLevelData();
      if (result.isNotEmpty) {
        homeCategoryList.clear();
        unstitchedList.clear();
        boutiqueCollection.clear();

        /// add sticky menu items from api response into [homeCategoryList].
        for (final category in result['category']) {
          homeCategoryList.add(
            HomeCategory.fromJson(category),
          );
        }

        /// add offers items from api response into [unstitchedList].
        for (final unstitched in result['Unstitched']) {
          unstitchedList.add(
            Unstitched.fromJson(unstitched),
          );
        }

        /// add offers items from api response into [boutiqueCollection].
        for (final boutique in result['boutique_collection']) {
          boutiqueCollection.add(
            BoutiqueCollection.fromJson(boutique),
          );
        }
      }
    } catch (e) {
      shootLog(e.toString());
    }
  }

  Future<void> _fetchAllHomeBottomData() async {
    try {
      Map<String, dynamic> result =
      await _apiService.fetchAllHomeBottomLevelData();
      if (result.isNotEmpty) {
        patternRangeList.clear();
        designOccasionList.clear();

        /// add pattern range items from api response into [patternRangeList].
        for (final pattern in result['range_of_pattern']) {
          patternRangeList.add(
            PatternRange.fromJson(pattern),
          );
        }

        /// add occasion items from api response into [designOccasionList].
        for (final occasion in result['design_occasion']) {
          designOccasionList.add(
            DesignOccasion.fromJson(occasion),
          );
        }
      }
    } catch (e) {
      shootLog(e.toString());
    }
  }
}
