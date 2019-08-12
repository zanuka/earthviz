class ImageModel {
  ImageModel(this.id, this.url, this.title);
  ImageModel.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'] as int;
    url = parsedJson['url'] as String;
    title = parsedJson['title'] as String;
  }
  int id;
  String url;
  String title;
}
