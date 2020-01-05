import 'package:json_annotation/json_annotation.dart';
part 'author.g.dart';
@JsonSerializable()
class Author {
  String nickName;
  int gender;
  Author(this.nickName, this.gender);
  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
  Map<String, dynamic> toJson() => _$AuthorToJson(this);
}