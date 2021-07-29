class CardModal {
  String image;
  String description;

  CardModal({this.image, this.description});

  CardModal.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> datanew = new Map<String, dynamic>();
    datanew['image'] = this.image;
    datanew['description'] = this.description;
    return datanew;
  }
}
