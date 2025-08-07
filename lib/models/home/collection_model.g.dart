// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String,
      currency: json['currency'] as String,
      unit: json['unit'] as String,
      wishlisted: json['wishlisted'] as bool,
      rfqStatus: json['rfq_status'] as bool,
      cartCount: (json['cart_count'] as num).toInt(),
      futureCartCount: (json['future_cart_count'] as num).toInt(),
      hasStock: json['has_stock'] as bool,
      price: json['price'] as String,
      actualPrice: json['actual_price'] as String,
      offer: json['offer'] as String,
      offerPrices: json['offer_prices'] as List<dynamic>,
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'currency': instance.currency,
      'unit': instance.unit,
      'wishlisted': instance.wishlisted,
      'rfq_status': instance.rfqStatus,
      'cart_count': instance.cartCount,
      'future_cart_count': instance.futureCartCount,
      'has_stock': instance.hasStock,
      'price': instance.price,
      'actual_price': instance.actualPrice,
      'offer': instance.offer,
      'offer_prices': instance.offerPrices,
    };
