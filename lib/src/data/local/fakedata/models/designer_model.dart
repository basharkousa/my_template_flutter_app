class DesignerModel {
  String name;
  String imageUrl;
  bool isSelected ;
  DesignerModel({this.name, this.imageUrl, this.isSelected,});

  static List<DesignerModel> designerList = [
    DesignerModel(
        name: "Alexa",
        imageUrl: "assets/images/test/alexa.jpg",
        isSelected: true),
    DesignerModel(
        name: "Joe", imageUrl: "assets/images/test/joe.jpg", isSelected: true),
    DesignerModel(
        name: "Kamal",
        imageUrl: "assets/images/test/kamal.jpg",
        isSelected: true),
    DesignerModel(
        name: "Alexa",
        imageUrl: "assets/images/test/alexa.jpg",
        isSelected: true),
    DesignerModel(
        name: "Joe", imageUrl: "assets/images/test/joe.jpg", isSelected: true),
    DesignerModel(
        name: "Kamal",
        imageUrl: "assets/images/test/kamal.jpg",
        isSelected: true),
    DesignerModel(
        name: "Alexa",
        imageUrl: "assets/images/test/alexa.jpg",
        isSelected: true),
    DesignerModel(
        name: "Joe", imageUrl: "assets/images/test/joe.jpg", isSelected: true),
    DesignerModel(
        name: "Kamal",
        imageUrl: "assets/images/test/kamal.jpg",
        isSelected: true)
  ];

}
