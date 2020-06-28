// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Challenge _$ChallengeFromJson(Map<String, dynamic> json) {
  return Challenge(
    id: json['id'] as int,
    createdAt: json['createdAt'] as String,
    updatedAt: json['updatedAt'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    photoUrl: json['photoUrl'] as String,
    location: json['location'] as String,
    points: json['points'] as int,
    isenable: json['isenable'] as bool,
  );
}

Map<String, dynamic> _$ChallengeToJson(Challenge instance) => <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'title': instance.title,
      'description': instance.description,
      'photoUrl': instance.photoUrl,
      'location': instance.location,
      'points': instance.points,
      'isenable': instance.isenable,
    };
