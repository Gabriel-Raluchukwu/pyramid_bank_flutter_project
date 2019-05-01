// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CustomerPasswordDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerPasswordDTO _$CustomerPasswordDTOFromJson(Map<String, dynamic> json) {
  return CustomerPasswordDTO(
      oldPassword: json['OldPassword'] as String,
      newPassword: json['NewPassword'] as String,
      confirmPassword: json['ConfirmPassword'] as String);
}

Map<String, dynamic> _$CustomerPasswordDTOToJson(
        CustomerPasswordDTO instance) =>
    <String, dynamic>{
      'OldPassword': instance.oldPassword,
      'NewPassword': instance.newPassword,
      'ConfirmPassword': instance.confirmPassword
    };
