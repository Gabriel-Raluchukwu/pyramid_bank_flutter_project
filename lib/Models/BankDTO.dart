import 'package:json_annotation/json_annotation.dart';

part 'BankDTO.g.dart';

@JsonSerializable()
class BankDTO {
  @JsonKey(name: 'Id')
  int id;

  @JsonKey(name: 'CreatedAt')
  num createdAt;

  @JsonKey(name: 'BankName')
  String bankName;

  @JsonKey(name: 'BankIdentificationCode')
  num bankIdentificationCode;

  BankDTO(
      {this.id, this.bankName, this.bankIdentificationCode, this.createdAt});

  //Constructors
  factory BankDTO.fromJson(Map<String, dynamic> json) =>
      _$BankDTOFromJson(json);

  Map<String, dynamic> toJson() => _$BankDTOToJson(this);
}
