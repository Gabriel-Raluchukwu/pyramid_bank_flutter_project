import 'package:json_annotation/json_annotation.dart';

import './_Enumerations.dart';

part 'CustomerAccountDTO.g.dart';

@JsonSerializable()
class CustomerAccountDTO {
  @JsonKey(name: 'Id')
  int id;

  @JsonKey(name: 'CreatedAt')
  num createdAt;

  @JsonKey(name: 'CustomerAccountNumber')
  String customerAccountNumber;

  @JsonKey(name: 'Surname')
  String surname;

  @JsonKey(name: 'FirstName')
  String firstName;

  @JsonKey(name: 'OtherNames')
  String otherNames;

  @JsonKey(name: 'Email')
  String email;

  @JsonKey(name: 'BVNNumber')
  String bvnNumber;

  @JsonKey(name: 'PhoneNumber')
  String phoneNumber;

  @JsonKey(name: 'AccountType')
  AccountType accountType;

  @JsonKey(name: 'AccountBalance')
  double accountbalance;

  @JsonKey(name: 'TransactionPin')
  int transactionPin;

  @JsonKey(name: 'ConfirmTransactionPin')
  int confirmTransactionPin;

  CustomerAccountDTO(
      {this.id,
      this.createdAt,
      this.customerAccountNumber,
      this.surname,
      this.firstName,
      this.otherNames,
      this.email,
      this.bvnNumber,
      this.phoneNumber,
      this.accountType,
      this.accountbalance,
      this.transactionPin,
      this.confirmTransactionPin});

  //Constructors
  factory CustomerAccountDTO.fromJson(Map<String, dynamic> json) =>
      _$CustomerAccountDTOFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerAccountDTOToJson(this);
}
