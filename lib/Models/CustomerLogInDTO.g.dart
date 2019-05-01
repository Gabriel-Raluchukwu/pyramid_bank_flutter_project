// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CustomerLogInDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerLogInDTO _$CustomerLogInDTOFromJson(Map<String, dynamic> json) {
  return CustomerLogInDTO(
      userName: json['UserName'] as String,
      password: json['Password'] as String);
}

Map<String, dynamic> _$CustomerLogInDTOToJson(CustomerLogInDTO instance) =>
    <String, dynamic>{
      'UserName': instance.userName,
      'Password': instance.password
    };
