// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'] as int,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    email: json['email'] as String,
    username: json['username'] as String,
    role: json['role'] as String,
    firstname: json['firstname'] as String,
    lastname: json['lastname'] as String,
    birthday: json['birthday'] == null
        ? null
        : DateTime.parse(json['birthday'] as String),
    photoUrl: json['photoUrl'] as String,
    phone: json['phone'] as String,
    departement: json['departement'] as String,
    isActive: json['isActive'] as bool,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'email': instance.email,
      'username': instance.username,
      'role': instance.role,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'birthday': instance.birthday?.toIso8601String(),
      'photoUrl': instance.photoUrl,
      'phone': instance.phone,
      'departement': instance.departement,
      'isActive': instance.isActive,
      'description': instance.description,
    };
