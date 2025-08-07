import 'package:json_annotation/json_annotation.dart';

part 'collection_model.g.dart';

@JsonSerializable()
class ProductModel {
  final int id;
  final String name;
  final String image;
  final String currency;
  final String unit;
  final bool wishlisted;
  @JsonKey(name: "rfq_status")
  final bool rfqStatus;
  @JsonKey(name: "cart_count")
  final int cartCount;
  @JsonKey(name: "future_cart_count")
  final int futureCartCount;
  @JsonKey(name: "has_stock")
  final bool hasStock;
  final String price;
  @JsonKey(name: "actual_price")
  final String actualPrice;
  final String offer;
  @JsonKey(name: "offer_prices")
  final List<dynamic> offerPrices;

  ProductModel({
    required this.id,
    required this.name,
    required this.image,
    required this.currency,
    required this.unit,
    required this.wishlisted,
    required this.rfqStatus,
    required this.cartCount,
    required this.futureCartCount,
    required this.hasStock,
    required this.price,
    required this.actualPrice,
    required this.offer,
    required this.offerPrices,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
