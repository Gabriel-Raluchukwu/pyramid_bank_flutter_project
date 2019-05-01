// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CustomerTransactionPinDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerTransactionPinDTO _$CustomerTransactionPinDTOFromJson(
    Map<String, dynamic> json) {
  return CustomerTransactionPinDTO(
      oldTransactionPin: json['OldTransactionPin'] as int,
      newTransactionPin: json['NewTransactionPin'] as int,
      confirmTransactionPin: json['ConfirmTransactionPin'] as int);
}

Map<String, dynamic> _$CustomerTransactionPinDTOToJson(
        CustomerTransactionPinDTO instance) =>
    <String, dynamic>{
      'OldTransactionPin': instance.oldTransactionPin,
      'NewTransactionPin': instance.newTransactionPin,
      'ConfirmTransactionPin': instance.confirmTransactionPin
    };
