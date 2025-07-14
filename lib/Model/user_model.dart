class UserModel {
  String? id;
  String? name;
  String? email;
  String? phone;
  String? profileImageUrl;

  UserModel(
    String id,
    String name,
    String email,
    String phone,
    String profileImageUrl,
  ) {
    this.id = id;
    this.name = name;
    this.email = email;
    this.phone = phone;
    this.profileImageUrl = profileImageUrl;
  }
}
