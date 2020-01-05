import 'package:json_annotation/json_annotation.dart';
import './author.dart' show Author;
part 'artical-overview.g.dart';
@JsonSerializable(explicitToJson: true)
class ArticalOverview {
  String title;
  Author author;
  String createdAt;
  ArticalOverview(this.title, this.author, this.createdAt);
  factory ArticalOverview.fromJson(Map<String, dynamic> json) => _$ArticalOverviewFromJson(json);
  Map<String, dynamic> toJson() => _$ArticalOverviewToJson(this);
}