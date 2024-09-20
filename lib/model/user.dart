class UserModel {
  static const String keyId = "keyId";
  static const String keyName = "keyName";
  static const String keyEmail = "keyEmail";
  static const String keyAccountType = "keyAccountType";
  static const String keyImageProfile = "keyImageProfile";

  String id;
  String name;
  String email;
  String accountType;
  String imageProfile;

  UserModel(
      {required this.id,
      required this.name,
      required this.email,
      required this.accountType,
      required this.imageProfile});

  UserModel.from(Map<String, dynamic> json)
      : this(
            id: json[keyId],
            name: json[keyName],
            email: json[keyEmail],
            accountType: json[keyAccountType],
            imageProfile: json[keyImageProfile]);

  Map<String, dynamic>  toJson() {
    return {
      keyId: id,
      keyName: name,
      keyAccountType: accountType,
      keyEmail: email,
      keyImageProfile: imageProfile
    };
  }
}
