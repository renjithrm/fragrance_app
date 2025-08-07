import 'package:json_annotation/json_annotation.dart';
import 'home_field.dart';

part 'home_response.g.dart';

@JsonSerializable(explicitToJson: true)
class HomeResponse {
  @JsonKey(name: "home_fields")
  final List<HomeField> homeFields;

  @JsonKey(name: "notification_count")
  final int notificationCount;

  HomeResponse({
    required this.homeFields,
    required this.notificationCount,
  });

  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);
  Map<String, dynamic> toJson() => _$HomeResponseToJson(this);
}
