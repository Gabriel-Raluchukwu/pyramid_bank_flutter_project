// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BankDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BankDTO _$BankDTOFromJson(Map<String, dynamic> json) {
  return BankDTO(
      id: json['Id'] as int,
      bankName: json['BankName'] as String,
      bankIdentificationCode: json['BankIdentificationCode'] as num,
      createdAt: json['CreatedAt'] as num);
}

Map<String, dynamic> _$BankDTOToJson(BankDTO instance) => <String, dynamic>{
      'Id': instance.id,
      'CreatedAt': instance.createdAt,
      'BankName': instance.bankName,
      'BankIdentificationCode': instance.bankIdentificationCode
    };
