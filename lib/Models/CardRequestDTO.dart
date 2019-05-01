import 'package:json_annotation/json_annotation.dart';

import './_Enumerations.dart';

part 'CardRequestDTO.g.dart';

@JsonSerializable()
class CardRequestDTO {
  @JsonKey(name: 'Id')
  int id;

  @JsonKey(name: 'CreatedAt')
  num createdAt;

  @JsonKey(name: 'CustomerAccountId')
  int customerAccountId;

  @JsonKey(name: 'CustomerAccountNumber')
  String customerAccountNumber;

  @JsonKey(name: 'CardType')
  CardType cardType;

  @JsonKey(name: 'Description')
  String description;

  @JsonKey(name: 'TransactionPin')
  int transactionPin;

  CardRequestDTO(
      {this.id,
      this.createdAt,
      this.customerAccountId,
      this.customerAccountNumber,
      this.cardType,
      this.description,
      this.transactionPin});

  //Constructor
  factory CardRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$CardRequestDTOFromJson(json);

  Map<String, dynamic> toJson() => _$CardRequestDTOToJson(this);
}
