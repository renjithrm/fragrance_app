import 'package:json_annotation/json_annotation.dart';

part 'carousel_item.g.dart';

@JsonSerializable()
class CarouselItem {
  final int id;
  final String image;
  final String type;

  CarouselItem({
    required this.id,
    required this.image,
    required this.type,
  });

  factory CarouselItem.fromJson(Map<String, dynamic> json) =>
      _$CarouselItemFromJson(json);
  Map<String, dynamic> toJson() => _$CarouselItemToJson(this);
}
