// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CustomerAccountDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerAccountDTO _$CustomerAccountDTOFromJson(Map<String, dynamic> json) {
  return CustomerAccountDTO(
      id: json['Id'] as int,
      createdAt: json['CreatedAt'] as num,
      customerAccountNumber: json['CustomerAccountNumber'] as String,
      surname: json['Surname'] as String,
      firstName: json['FirstName'] as String,
      otherNames: json['OtherNames'] as String,
      email: json['Email'] as String,
      bvnNumber: json['BVNNumber'] as String,
      phoneNumber: json['PhoneNumber'] as String,
      accountType:
          _$enumDecodeNullable(_$AccountTypeEnumMap, json['AccountType']),
      accountbalance: (json['AccountBalance'] as num)?.toDouble(),
      transactionPin: json['TransactionPin'] as int,
      confirmTransactionPin: json['ConfirmTransactionPin'] as int);
}

Map<String, dynamic> _$CustomerAccountDTOToJson(CustomerAccountDTO instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'CreatedAt': instance.createdAt,
      'CustomerAccountNumber': instance.customerAccountNumber,
      'Surname': instance.surname,
      'FirstName': instance.firstName,
      'OtherNames': instance.otherNames,
      'Email': instance.email,
      'BVNNumber': instance.bvnNumber,
      'PhoneNumber': instance.phoneNumber,
      'AccountType': _$AccountTypeEnumMap[instance.accountType],
      'AccountBalance': instance.accountbalance,
      'TransactionPin': instance.transactionPin,
      'ConfirmTransactionPin': instance.confirmTransactionPin
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

const _$AccountTypeEnumMap = <AccountType, dynamic>{
  AccountType.Savings: 'Savings',
  AccountType.Current: 'Current'
};
