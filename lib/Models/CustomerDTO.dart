import 'package:json_annotation/json_annotation.dart';

part 'CustomerDTO.g.dart';

@JsonSerializable()
class CustomerDTO {
  @JsonKey(name: 'Id')
  int id;

  @JsonKey(name: 'CreatedAt')
  num createdAt;

  @JsonKey(name: 'Username')
  String userName;

  @JsonKey(name: 'CustomerAccountNumber')
  String customerAccountNumber;

  @JsonKey(name: 'Password')
  String password;

  @JsonKey(name: 'ConfirmPassword')
  String confirmPassword;

  @JsonKey(name: 'VerificationCode')
  int verificationCode;

  CustomerDTO(
      {this.id,
      this.createdAt,
      this.userName,
      this.customerAccountNumber,
      this.password,
      this.confirmPassword,
      this.verificationCode});

  //Constructors

  factory CustomerDTO.fromJson(Map<String, dynamic> json) =>
      _$CustomerDTOFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerDTOToJson(this);
}
