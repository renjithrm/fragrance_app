import 'package:json_annotation/json_annotation.dart';
import 'carousel_item.dart';
import 'brand_model.dart';
import 'category_model.dart';
import 'collection_model.dart';
import 'banner_model.dart';

part 'home_field.g.dart';

@JsonSerializable(explicitToJson: true)
class HomeField {
  final String type;

  @JsonKey(name: "carousel_items")
  final List<CarouselItem>? carouselItems;

  final List<BrandModel>? brands;

  final List<CategoryModel>? categories;

  final String? image;

  final int? collection_id;
  final String? name;
  final List<ProductModel>? products;

  final List<BannerModel>? banners;

  final BannerModel? banner;

  HomeField({
    required this.type,
    this.carouselItems,
    this.brands,
    this.categories,
    this.image,
    this.collection_id,
    this.name,
    this.products,
    this.banners,
    this.banner,
  });

  factory HomeField.fromJson(Map<String, dynamic> json) =>
      _$HomeFieldFromJson(json);
  Map<String, dynamic> toJson() => _$HomeFieldToJson(this);
}
