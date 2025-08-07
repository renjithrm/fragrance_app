// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeResponse _$HomeResponseFromJson(Map<String, dynamic> json) => HomeResponse(
      homeFields: (json['home_fields'] as List<dynamic>)
          .map((e) => HomeField.fromJson(e as Map<String, dynamic>))
          .toList(),
      notificationCount: (json['notification_count'] as num).toInt(),
    );

Map<String, dynamic> _$HomeResponseToJson(HomeResponse instance) =>
    <String, dynamic>{
      'home_fields': instance.homeFields.map((e) => e.toJson()).toList(),
      'notification_count': instance.notificationCount,
    };
