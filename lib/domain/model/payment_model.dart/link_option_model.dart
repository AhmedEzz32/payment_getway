class LinkOptionsModel {
  final dynamic persistentToken;

  LinkOptionsModel({this.persistentToken});

  factory LinkOptionsModel.fromJson(Map<String, dynamic> json) {
    return LinkOptionsModel(
      persistentToken: json['persistent_token'],
    );
  }
}