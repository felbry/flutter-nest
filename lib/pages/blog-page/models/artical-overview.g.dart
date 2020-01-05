// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artical-overview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticalOverview _$ArticalOverviewFromJson(Map<String, dynamic> json) {
  return ArticalOverview(
    json['title'] as String,
    json['author'] == null
        ? null
        : Author.fromJson(json['author'] as Map<String, dynamic>),
    json['createdAt'] as String,
  );
}

Map<String, dynamic> _$ArticalOverviewToJson(ArticalOverview instance) =>
    <String, dynamic>{
      'title': instance.title,
      'author': instance.author?.toJson(),
      'createdAt': instance.createdAt,
    };
