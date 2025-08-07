// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeField _$HomeFieldFromJson(Map<String, dynamic> json) => HomeField(
      type: json['type'] as String,
      carouselItems: (json['carousel_items'] as List<dynamic>?)
          ?.map((e) => CarouselItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      brands: (json['brands'] as List<dynamic>?)
          ?.map((e) => BrandModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      image: json['image'] as String?,
      collection_id: (json['collection_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      banners: (json['banners'] as List<dynamic>?)
          ?.map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      banner: json['banner'] == null
          ? null
          : BannerModel.fromJson(json['banner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomeFieldToJson(HomeField instance) => <String, dynamic>{
      'type': instance.type,
      'carousel_items': instance.carouselItems?.map((e) => e.toJson()).toList(),
      'brands': instance.brands?.map((e) => e.toJson()).toList(),
      'categories': instance.categories?.map((e) => e.toJson()).toList(),
      'image': instance.image,
      'collection_id': instance.collection_id,
      'name': instance.name,
      'products': instance.products?.map((e) => e.toJson()).toList(),
      'banners': instance.banners?.map((e) => e.toJson()).toList(),
      'banner': instance.banner?.toJson(),
    };
