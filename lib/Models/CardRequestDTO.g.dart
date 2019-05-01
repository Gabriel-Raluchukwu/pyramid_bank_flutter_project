// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CardRequestDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardRequestDTO _$CardRequestDTOFromJson(Map<String, dynamic> json) {
  return CardRequestDTO(
      id: json['Id'] as int,
      createdAt: json['CreatedAt'] as num,
      customerAccountId: json['CustomerAccountId'] as int,
      customerAccountNumber: json['CustomerAccountNumber'] as String,
      cardType: _$enumDecodeNullable(_$CardTypeEnumMap, json['CardType']),
      description: json['Description'] as String,
      transactionPin: json['TransactionPin'] as int);
}

Map<String, dynamic> _$CardRequestDTOToJson(CardRequestDTO instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'CreatedAt': instance.createdAt,
      'CustomerAccountId': instance.customerAccountId,
      'CustomerAccountNumber': instance.customerAccountNumber,
      'CardType': _$CardTypeEnumMap[instance.cardType],
      'Description': instance.description,
      'TransactionPin': instance.transactionPin
    };

T _$enumDecode<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }
  return enumValues.entries
      .singleWhere((e) => e.value == source,
          orElse: () => throw ArgumentError(
              '`$source` is not one of the supported values: '
              '${enumValues.values.join(', ')}'))
      .key;
}

T _$enumDecodeNullable<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source);
}

const _$CardTypeEnumMap = <CardType, dynamic>{
  CardType.Verve: 'Verve',
  CardType.Master: 'Master'
};
