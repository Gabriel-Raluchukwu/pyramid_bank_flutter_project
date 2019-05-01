import 'package:json_annotation/json_annotation.dart';

part 'BeneficiaryDTO.g.dart';

@JsonSerializable()
class BeneficiaryDTO {
  @JsonKey(name: 'Id')
  int id;

  @JsonKey(name: 'CreatedAt')
  num createdAt;

  @JsonKey(name: 'CustomerId')
  int customerId;

  @JsonKey(name: 'CustomerAccountNumber')
  String customerAccountNumber;

  @JsonKey(name: 'BankId')
  int bankId;

  @JsonKey(name: 'RecipientAccountNumber')
  String recipientAccountNumber;

  @JsonKey(name: 'RecipientAccountName')
  String recipientAccountName;

  @JsonKey(name: 'NickName')
  String nickName;

  BeneficiaryDTO(
      {this.id,
      this.createdAt,
      this.customerId,
      this.customerAccountNumber,
      this.bankId,
      this.recipientAccountNumber,
      this.recipientAccountName,
      this.nickName});

  //Constructors
  factory BeneficiaryDTO.fromJson(Map<String, dynamic> json) =>
      _$BeneficiaryDTOFromJson(json);

  Map<String, dynamic> toJson() => _$BeneficiaryDTOToJson(this);
}
