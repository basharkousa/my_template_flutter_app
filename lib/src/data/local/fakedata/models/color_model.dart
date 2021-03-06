class ColorModel {
  String id;
  final String name;
  final String description;
  final List<String> imageUrls;
  bool selected = false;

  ColorModel({
    this.id,
    this.name,
    this.description,
    this.imageUrls,
    this.selected,
  });

  @override
  String toString() {
    return 'ColorModel{id: $id, name: $name, description: $description, imageUrls: $imageUrls}';
  }

  static List<ColorModel> colors = [
    ColorModel(
        id: "1c",
        imageUrls: [
          "assets/images/test/iv_wooden_color.jpg",
        ],
        name: "H3331-15",
        selected: true),
    ColorModel(
        id: "1c",
        imageUrls: [
          "assets/images/test/iv_seconderycolor.jpg",
        ],
        name: "U767-9",
    ),
  ];

  static List<ColorModel> colorsArabic =[

    ColorModel(
        id: "1c",
        imageUrls: [
          "assets/images/test/iv_wooden_color.jpg",
        ],
        name: "H3331-15",
        selected: true),
    ColorModel(
      id: "1c",
      imageUrls: [
        "assets/images/test/iv_seconderycolor.jpg",
      ],
      name: "U767-9",
    ),

  ];

  static List<ColorModel> woodColor = [

    ColorModel(
        id: "1c",
        imageUrls: [
          "assets/images/test/iv_wooden_color.jpg",
        ],
        name: "H3331-15",
        selected: false),
    ColorModel(
      id: "1c",
      imageUrls: [
        "assets/images/test/iv_wooden_color2.jpg",
      ],
      name: "U767-9",
    ),
    ColorModel(
      id: "1c",
      imageUrls: [
        "assets/images/test/iv_wooden_color3.jpg",
      ],
      name: "H3331-15",
    ),

    ColorModel(
        id: "1c",
        imageUrls: [
          "assets/images/test/iv_wooden_color.jpg",
        ],
        name: "H3331-15",
        selected: false),
    ColorModel(
      id: "1c",
      imageUrls: [
        "assets/images/test/iv_wooden_color2.jpg",
      ],
      name: "U767-9",
    ),
    ColorModel(
      id: "1c",
      imageUrls: [
        "assets/images/test/iv_wooden_color3.jpg",
      ],
      name: "H3331-15",
    ),

    ColorModel(
        id: "1c",
        imageUrls: [
          "assets/images/test/iv_wooden_color.jpg",
        ],
        name: "H3331-15",
        selected: false),
    ColorModel(
      id: "1c",
      imageUrls: [
        "assets/images/test/iv_wooden_color2.jpg",
      ],
      name: "U767-9",
    ),
    ColorModel(
      id: "1c",
      imageUrls: [
        "assets/images/test/iv_wooden_color3.jpg",
      ],
      name: "H3331-15",
    ),

    ColorModel(
        id: "1c",
        imageUrls: [
          "assets/images/test/iv_wooden_color.jpg",
        ],
        name: "H3331-15",
        selected: false),
    ColorModel(
      id: "1c",
      imageUrls: [
        "assets/images/test/iv_wooden_color2.jpg",
      ],
      name: "U767-9",
    ),
    ColorModel(
      id: "1c",
      imageUrls: [
        "assets/images/test/iv_wooden_color3.jpg",
      ],
      name: "H3331-15",
    ),


  ];

  static List<ColorModel> solidColor = [

    ColorModel(
        id: "1c",
        imageUrls: [
          "assets/images/test/iv_wooden_color.jpg",
        ],
        name: "H3331-15",
        selected: false),
    ColorModel(
      id: "1c",
      imageUrls: [
        "assets/images/test/iv_wooden_color2.jpg",
      ],
      name: "U767-9",
    ),
    ColorModel(
      id: "1c",
      imageUrls: [
        "assets/images/test/iv_wooden_color3.jpg",
      ],
      name: "H3331-15",
    ),
    ColorModel(
        id: "1c",
        imageUrls: [
          "assets/images/test/iv_wooden_color.jpg",
        ],
        name: "H3331-15",
        selected: false),

    ColorModel(
      id: "1c",
      imageUrls: [
        "assets/images/test/iv_wooden_color2.jpg",
      ],
      name: "U767-9",
    ),
    ColorModel(
      id: "1c",
      imageUrls: [
        "assets/images/test/iv_wooden_color3.jpg",
      ],
      name: "H3331-15",
    ),
    ColorModel(
        id: "1c",
        imageUrls: [
          "assets/images/test/iv_wooden_color.jpg",
        ],
        name: "H3331-15",
        selected: false),
    ColorModel(
      id: "1c",
      imageUrls: [
        "assets/images/test/iv_wooden_color2.jpg",
      ],
      name: "U767-9",
    ),


  ];
}
