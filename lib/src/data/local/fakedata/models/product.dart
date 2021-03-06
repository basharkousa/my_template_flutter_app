// import 'package:uuid/uuid.dart';

import 'package:my_template_flutter_app/src/data/local/fakedata/models/color_model.dart';

class ProductsData {
  // static final uuid = Uuid();

  static List<Product> products = [
    Product(
        id: "1",
        name: "LONEST",
        description: "Wardorb With 3 doors",
        overview:
            'We know it’s nice to feel appreciated. That’s why we offer a selection of discounts on products just for our Kepler Family members. There are products across our entire range, from mattresses to kitchens to food, so chances are there will be something you love!',
        cost: "\$175.00",
        discount: "",
        isWishes: true,
        imageUrls: [
          "assets/images/test/1.jpeg",
          "assets/images/test/2.jpeg",
          "assets/images/test/3.jpeg",
          "assets/images/test/4.jpeg"
        ],
        isARSupport: true,
        rating: "4.8",
        isTrending: false,
        colors: ColorModel.colors,
        sizeModels: SizeModel.sizeModelList),
    Product(
        id: "2",
        name: "TYSSEDAL",
        description: "A good night's sleep is hard to get.",
        overview:
            'We know it’s nice to feel appreciated. That’s why we offer a selection of discounts on products just for our Kepler Family members. There are products across our entire range, from mattresses to kitchens to food, so chances are there will be something you love!',
        cost: "\$620.00",
        discount: "",
        isWishes: false,
        imageUrls: [
          "assets/images/test/2.jpeg",
          "assets/images/test/1.jpeg",
        ],
        isARSupport: true,
        rating: "4.8",
        isTrending: true,
        colors: ColorModel.colors,
        sizeModels: SizeModel.sizeModelList),
    Product(
        id: "3",
        name: "NET",
        description: "A good night's sleep is hard to get.",
        overview:
            'We know it’s nice to feel appreciated. That’s why we offer a selection of discounts on products just for our Kepler Family members. There are products across our entire range, from mattresses to kitchens to food, so chances are there will be something you love!',
        cost: "\$120.00",
        discount: "30% off",
        isWishes: true,
        imageUrls: ["assets/images/test/3.jpeg"],
        isARSupport: true,
        rating: "4.8",
        isTrending: true,
        colors: ColorModel.colors,
        sizeModels: SizeModel.sizeModelList),
    Product(
        id: "4",
        name: "PATCH",
        description: "A good night's sleep is hard to get.more itemsssss",
        overview:
            'We know it’s nice to feel appreciated. That’s why we offer a selection of discounts on products just for our Kepler Family members. There are products across our entire range, from mattresses to kitchens to food, so chances are there will be something you love!',
        cost: "\$175.00",
        discount: "50% off",
        isWishes: false,
        imageUrls: ["assets/images/test/4.jpeg"],
        isARSupport: false,
        rating: "5.8",
        isTrending: false,
        colors: ColorModel.colors,
        sizeModels: SizeModel.sizeModelList),
  ];

  static List<Product> productsArabic = [
    Product(
        id: "5",
        name: "وحيد",
        description: "خزانة ملابس بـ 3 أبواب",
        overview:
            'نحن نعلم أنه من الجيد أن نشعر بالتقدير. لذلك نقدم مجموعة مختارة من الخصومات على المنتجات لأفراد عائلة Kepler فقط. هناك منتجات عبر مجموعتنا الكاملة ، من المراتب إلى المطابخ إلى الطعام ، لذلك من المحتمل أن يكون هناك شيء تحبه!',
        cost: "\$175.00",
        discount: "تخفيض 30%",
        isWishes: true,
        imageUrls: [
          "assets/images/test/1.jpeg",
          "assets/images/test/2.jpeg",
          "assets/images/test/3.jpeg",
          "assets/images/test/4.jpeg"
        ],
        isARSupport: true,
        rating: "4.8",
        isTrending: false,
        colors: ColorModel.colorsArabic,
        sizeModels: SizeModel.sizeModelList),
    Product(
        id: "6",
        name: "تايسيدال",
        description: "من الصعب الحصول على نوم جيد.",
        overview:
            'نحن نعلم أنه من الجيد أن نشعر بالتقدير. لذلك نقدم مجموعة مختارة من الخصومات على المنتجات لأفراد عائلة Kepler فقط. هناك منتجات عبر مجموعتنا الكاملة ، من المراتب إلى المطابخ إلى الطعام ، لذلك من المحتمل أن يكون هناك شيء تحبه!',
        cost: "\$175.00",
        discount: "تخفيض 50%",
        isWishes: false,
        imageUrls: [
          "assets/images/test/2.jpeg",
          "assets/images/test/1.jpeg",
        ],
        isARSupport: false,
        rating: "4.8",
        isTrending: false,
        colors: ColorModel.colorsArabic,
        sizeModels: SizeModel.sizeModelList),
    Product(
        id: "7",
        name: "شبكة",
        description: "من الصعب الحصول على نوم.",
        overview:
            'نحن نعلم أنه من الجيد أن نشعر بالتقدير. لذلك نقدم مجموعة مختارة من الخصومات على المنتجات لأفراد عائلة Kepler فقط. هناك منتجات عبر مجموعتنا الكاملة ، من المراتب إلى المطابخ إلى الطعام ، لذلك من المحتمل أن يكون هناك شيء تحبه!',
        cost: "\$175.00",
        discount: "",
        isWishes: false,
        imageUrls: ["assets/images/test/1.jpeg"],
        isARSupport: true,
        rating: "1.8",
        isTrending: false,
        colors: ColorModel.colorsArabic,
        sizeModels: SizeModel.sizeModelList),
    Product(
        id: "8",
        name: "رقعة قماشية",
        description: "من الصعب الحصول على نوم جيد.",
        overview:
            'نحن نعلم أنه من الجيد أن نشعر بالتقدير. لذلك نقدم مجموعة مختارة من الخصومات على المنتجات لأفراد عائلة Kepler فقط. هناك منتجات عبر مجموعتنا الكاملة ، من المراتب إلى المطابخ إلى الطعام ، لذلك من المحتمل أن يكون هناك شيء تحبه!',
        cost: "\$175.00",
        discount: "تخفيض 30%",
        isWishes: true,
        imageUrls: ["assets/images/test/4.jpeg"],
        isARSupport: true,
        rating: "4.8",
        isTrending: false,
        colors: ColorModel.colorsArabic,
        sizeModels: SizeModel.sizeModelList),
  ];

  static List<Product> otherProducts = [
    Product(
        id: "9",
        name: "Malam",
        description: "Wardorb With 3 doors",
        overview:
            'We know it’s nice to feel appreciated. That’s why we offer a selection of discounts on products just for our Kepler Family members. There are products across our entire range, from mattresses to kitchens to food, so chances are there will be something you love!',
        cost: "\$175.00",
        discount: "",
        isWishes: true,
        imageUrls: ["assets/images/test/iv_bed.jpg"],
        isARSupport: true,
        rating: "4.8",
        isTrending: false,
        colors: ColorModel.colors,
        sizeModels: SizeModel.sizeModelList),
    Product(
        id: "10",
        name: "Haugesund",
        description: "A good night's sleep is hard to get.",
        overview:
            'We know it’s nice to feel appreciated. That’s why we offer a selection of discounts on products just for our Kepler Family members. There are products across our entire range, from mattresses to kitchens to food, so chances are there will be something you love!',
        cost: "\$120.00",
        discount: "30% off",
        isWishes: true,
        imageUrls: ["assets/images/test/iv_berushe.jpg"],
        isARSupport: true,
        rating: "4.8",
        isTrending: true,
        colors: ColorModel.colors,
        sizeModels: SizeModel.sizeModelList),
    Product(
        id: "11",
        name: "Kungsbllomma",
        description: "A good night's sleep is hard to get.",
        overview:
            'We know it’s nice to feel appreciated. That’s why we offer a selection of discounts on products just for our Kepler Family members. There are products across our entire range, from mattresses to kitchens to food, so chances are there will be something you love!',
        cost: "\$620.00",
        discount: "",
        isWishes: false,
        imageUrls: ["assets/images/test/iv_pillow.jpg"],
        isARSupport: true,
        rating: "4.8",
        isTrending: true,
        colors: ColorModel.colors,
        sizeModels: SizeModel.sizeModelList),
  ];

  static List<Product> otherProductsArabic = [
    Product(
        id: "12",
        name: "Malam",
        description: "خزانة ملابس بـ 3 أبواب",
        overview:
            'نحن نعلم أنه من الجيد أن نشعر بالتقدير. لذلك نقدم مجموعة مختارة من الخصومات على المنتجات لأفراد عائلة Kepler فقط. هناك منتجات عبر مجموعتنا الكاملة ، من المراتب إلى المطابخ إلى الطعام ، لذلك من المحتمل أن يكون هناك شيء تحبه!',
        cost: "\$175.00",
        discount: "تخفيض 30%",
        isWishes: true,
        imageUrls: ["assets/images/test/iv_bed.jpg"],
        isARSupport: true,
        rating: "4.8",
        isTrending: false,
        colors: ColorModel.colorsArabic,
        sizeModels: SizeModel.sizeModelList),
    Product(
        id: "13",
        name: "Haugesund",
        description: "من الصعب الحصول على نوم.",
        overview:
            'نحن نعلم أنه من الجيد أن نشعر بالتقدير. لذلك نقدم مجموعة مختارة من الخصومات على المنتجات لأفراد عائلة Kepler فقط. هناك منتجات عبر مجموعتنا الكاملة ، من المراتب إلى المطابخ إلى الطعام ، لذلك من المحتمل أن يكون هناك شيء تحبه!',
        cost: "\$175.00",
        discount: "",
        isWishes: false,
        imageUrls: ["assets/images/test/iv_berushe.jpg"],
        isARSupport: true,
        rating: "1.8",
        isTrending: false,
        colors: ColorModel.colorsArabic,
        sizeModels: SizeModel.sizeModelList),
    Product(
        id: "14",
        name: "Kungsbllomma",
        description: "من الصعب الحصول على نوم جيد.",
        overview:
            'نحن نعلم أنه من الجيد أن نشعر بالتقدير. لذلك نقدم مجموعة مختارة من الخصومات على المنتجات لأفراد عائلة Kepler فقط. هناك منتجات عبر مجموعتنا الكاملة ، من المراتب إلى المطابخ إلى الطعام ، لذلك من المحتمل أن يكون هناك شيء تحبه!',
        cost: "\$175.00",
        discount: "تخفيض 50%",
        isWishes: false,
        imageUrls: ["assets/images/test/iv_pillow.jpg"],
        isARSupport: false,
        rating: "4.8",
        isTrending: false,
        colors: ColorModel.colorsArabic,
        sizeModels: SizeModel.sizeModelList),
  ];

  static Product shopTheLookProduct = Product(
      id: "15",
      name: "PATCH",
      description: "A good night's sleep is hard to get.more itemsssss",
      overview:
          'We know it’s nice to feel appreciated. That’s why we offer a selection of discounts on products just for our Kepler Family members. There are products across our entire range, from mattresses to kitchens to food, so chances are there will be something you love!',
      cost: "\$175.00",
      discount: "50% off",
      isWishes: false,
      imageUrls: [
        "assets/images/test/3.jpeg",
        "assets/images/test/4.jpeg",
        "assets/images/test/4.jpeg"
      ],
      isARSupport: false,
      rating: "5.8",
      isTrending: false,
      colors: ColorModel.colors);
  static Product shopTheLookProductArabic = Product(
      id: "16",
      name: "رقعة قماشية",
      description: "من الصعب الحصول على نوم جيد.",
      cost: "\$175.00",
      discount: "تخفيض 30%",
      isWishes: true,
      imageUrls: [
        "assets/images/test/3.jpeg",
        "assets/images/test/2.jpeg",
        "assets/images/test/4.jpeg"
      ],
      isARSupport: true,
      rating: "4.8",
      isTrending: false,
      colors: ColorModel.colorsArabic);


  static List<Product> topRatedProducts = [
    Product(
        id: "1",
        name: "LONEST",
        description: "Wardorb With 3 doors",
        overview:
        'We know it’s nice to feel appreciated. That’s why we offer a selection of discounts on products just for our Kepler Family members. There are products across our entire range, from mattresses to kitchens to food, so chances are there will be something you love!',
        cost: "\$175.00",
        discount: "",
        isWishes: true,
        imageUrls: [
          "assets/images/test/iv_beautiful_table.jpg",
          "assets/images/test/iv_blue_living.jpg",
          "assets/images/test/iv_khozna.jpg",
          "assets/images/test/iv_nice_bedroom.jpg"
        ],
        isARSupport: true,
        rating: "4.8",
        isTrending: false,
        colors: ColorModel.colors,
        sizeModels: SizeModel.sizeModelList),
    Product(
        id: "2",
        name: "TYSSEDAL",
        description: "A good night's sleep is hard to get.",
        overview:
        'We know it’s nice to feel appreciated. That’s why we offer a selection of discounts on products just for our Kepler Family members. There are products across our entire range, from mattresses to kitchens to food, so chances are there will be something you love!',
        cost: "\$620.00",
        discount: "",
        isWishes: false,
        imageUrls: [
          "assets/images/test/iv_blue_living.jpg",
          "assets/images/test/1.jpeg",
        ],
        isARSupport: true,
        rating: "4.8",
        isTrending: true,
        colors: ColorModel.colors,
        sizeModels: SizeModel.sizeModelList),
    Product(
        id: "3",
        name: "NET",
        description: "A good night's sleep is hard to get.",
        overview:
        'We know it’s nice to feel appreciated. That’s why we offer a selection of discounts on products just for our Kepler Family members. There are products across our entire range, from mattresses to kitchens to food, so chances are there will be something you love!',
        cost: "\$120.00",
        discount: "30% off",
        isWishes: true,
        imageUrls: ["assets/images/test/iv_khozna.jpg"],
        isARSupport: true,
        rating: "4.8",
        isTrending: true,
        colors: ColorModel.colors,
        sizeModels: SizeModel.sizeModelList),
    Product(
        id: "4",
        name: "PATCH",
        description: "A good night's sleep is hard to get.more itemsssss",
        overview:
        'We know it’s nice to feel appreciated. That’s why we offer a selection of discounts on products just for our Kepler Family members. There are products across our entire range, from mattresses to kitchens to food, so chances are there will be something you love!',
        cost: "\$175.00",
        discount: "50% off",
        isWishes: false,
        imageUrls: ["assets/images/test/iv_nice_bedroom.jpg"],
        isARSupport: false,
        rating: "5.8",
        isTrending: false,
        colors: ColorModel.colors,
        sizeModels: SizeModel.sizeModelList),
  ];

  static List<Product> topRatedProductsArabic = [
    Product(
        id: "5",
        name: "وحيد",
        description: "خزانة ملابس بـ 3 أبواب",
        overview:
        'نحن نعلم أنه من الجيد أن نشعر بالتقدير. لذلك نقدم مجموعة مختارة من الخصومات على المنتجات لأفراد عائلة Kepler فقط. هناك منتجات عبر مجموعتنا الكاملة ، من المراتب إلى المطابخ إلى الطعام ، لذلك من المحتمل أن يكون هناك شيء تحبه!',
        cost: "\$175.00",
        discount: "تخفيض 30%",
        isWishes: true,
        imageUrls: [
          "assets/images/test/iv_beautiful_table.jpg",
          "assets/images/test/iv_blue_living.jpg",
          "assets/images/test/iv_khozna.jpg",
          "assets/images/test/iv_nice_bedroom.jpg"
        ],
        isARSupport: true,
        rating: "4.8",
        isTrending: false,
        colors: ColorModel.colorsArabic,
        sizeModels: SizeModel.sizeModelList),
    Product(
        id: "6",
        name: "تايسيدال",
        description: "من الصعب الحصول على نوم جيد.",
        overview:
        'نحن نعلم أنه من الجيد أن نشعر بالتقدير. لذلك نقدم مجموعة مختارة من الخصومات على المنتجات لأفراد عائلة Kepler فقط. هناك منتجات عبر مجموعتنا الكاملة ، من المراتب إلى المطابخ إلى الطعام ، لذلك من المحتمل أن يكون هناك شيء تحبه!',
        cost: "\$175.00",
        discount: "تخفيض 50%",
        isWishes: false,
        imageUrls: [
          "assets/images/test/2.jpeg",
          "assets/images/test/1.jpeg",
        ],
        isARSupport: false,
        rating: "4.8",
        isTrending: false,
        colors: ColorModel.colorsArabic,
        sizeModels: SizeModel.sizeModelList),
    Product(
        id: "7",
        name: "شبكة",
        description: "من الصعب الحصول على نوم.",
        overview:
        'نحن نعلم أنه من الجيد أن نشعر بالتقدير. لذلك نقدم مجموعة مختارة من الخصومات على المنتجات لأفراد عائلة Kepler فقط. هناك منتجات عبر مجموعتنا الكاملة ، من المراتب إلى المطابخ إلى الطعام ، لذلك من المحتمل أن يكون هناك شيء تحبه!',
        cost: "\$175.00",
        discount: "",
        isWishes: false,
        imageUrls: ["assets/images/test/1.jpeg"],
        isARSupport: true,
        rating: "1.8",
        isTrending: false,
        colors: ColorModel.colorsArabic,
        sizeModels: SizeModel.sizeModelList),
    Product(
        id: "8",
        name: "رقعة قماشية",
        description: "من الصعب الحصول على نوم جيد.",
        overview:
        'نحن نعلم أنه من الجيد أن نشعر بالتقدير. لذلك نقدم مجموعة مختارة من الخصومات على المنتجات لأفراد عائلة Kepler فقط. هناك منتجات عبر مجموعتنا الكاملة ، من المراتب إلى المطابخ إلى الطعام ، لذلك من المحتمل أن يكون هناك شيء تحبه!',
        cost: "\$175.00",
        discount: "تخفيض 30%",
        isWishes: true,
        imageUrls: ["assets/images/test/4.jpeg"],
        isARSupport: true,
        rating: "4.8",
        isTrending: false,
        colors: ColorModel.colorsArabic,
        sizeModels: SizeModel.sizeModelList),
  ];

}

class Product {
  String id;
  String name;
  String description;
  String overview;
  String cost;
  List<String> imageUrls;
  String discount;
  bool isWishes;
  bool isARSupport;
  bool isTrending;
  String rating;
  List<ColorModel> colors;
  List<SizeModel> sizeModels;

  Product(
      {this.id,
      this.name,
      this.description,
      this.overview,
      this.cost,
      this.imageUrls,
      this.discount,
      this.isWishes,
      this.isARSupport,
      this.isTrending,
      this.rating,
      this.colors,
      this.sizeModels});

  @override
  String toString() {
    return 'Product{id: $id, name: $name, description: $description, overview: $overview, cost: $cost, imageUrls: $imageUrls, discount: $discount, isWishes: $isWishes, isARSupport: $isARSupport, isTrending: $isTrending, rating: $rating, colors: $colors, sizeModels: $sizeModels}';
  }
}

class SizeModel {
  String id;
  String name;
  SizeDimens dimens;
  bool selected = false;
  static final uuid = "Uuid()";

  String get getDescription =>
      "Dimension (cm): W ${dimens.width} x H ${dimens.height} x D ${dimens.depth}";

  SizeModel({this.id, this.name, this.selected, this.dimens}) {
    if (this.selected == null) {
      this.selected = false;
    }
  }

  @override
  String toString() {
    return 'SizeModel{id: $id, name: $name, }';
  }

  static List<SizeModel> sizeModelList = [
    SizeModel(
      id: "",
      name: "Twin Bed",
      dimens: SizeDimens(height: "70 cm", width: "100 cm", maxLoad: "200 kg", depth: "60 cm"),
    ),
    SizeModel(
      id: "uuid.v1()",
      name: "California King",
      dimens: SizeDimens(height: "150 cm", width: "150 cm", maxLoad: "200 kg", depth: "70 cm"),
    ),
    SizeModel(
        id: "uuid.v1()",
        name: "Single",
        dimens: SizeDimens(
          height: "0.5 m",
          width: "1.5 m",
          maxLoad: "200 kg",
          depth: "1.5",
        ),
        selected: true),
  ];

  static List<SizeModel> sizeModelListForSubCategoryPage = [
    SizeModel(
      id: "uuid.v1()",
      name: "Twin Beds",
      dimens: SizeDimens(height: "70 cm", width: "100 cm", maxLoad: "200 kg", depth: "60 cm"),
    ),
    SizeModel(
      id: "uuid.v1()",
      name: "California Kings",
      dimens: SizeDimens(height: "150 cm", width: "150 cm", maxLoad: "200 kg", depth: "70 cm"),
    ),
    SizeModel(
      id: "uuid.v1()",
      name: "Twin Bed",
      dimens: SizeDimens(height: "70 cm", width: "100 cm", maxLoad: "200 kg", depth: "60 cm"),
    ),
    SizeModel(
      id: "uuid.v1()",
      name: "California King",
      dimens: SizeDimens(height: "150 cm", width: "150 cm", maxLoad: "200 kg", depth: "70 cm"),
    ),
    SizeModel(
      id: "uuid.v1()",
      name: "Twin Bed",
      dimens: SizeDimens(height: "70 cm", width: "100 cm", maxLoad: "200 kg", depth: "60 cm"),
    ),
    SizeModel(
      id: "uuid.v1()",
      name: "California King",
      dimens: SizeDimens(height: "150 cm", width: "150 cm", maxLoad: "200 kg", depth: "70 cm"),
    ),
    SizeModel(
        id: "uuid.v1()",
        name: "Single",
        dimens: SizeDimens(
          height: "0.5 m",
          width: "1.5 m",
          maxLoad: "200 kg",
          depth: "1.5",
        ),
        selected: true),
  ];
}

class SizeDimens {
  String maxLoad;
  String width, depth, height;

  SizeDimens({this.maxLoad, this.width, this.depth, this.height});
}

class BrandModel{
  String imgUrl;
  String title;

  BrandModel({this.imgUrl, this.title});

  @override
  String toString() {
    return 'BrandModel{imgUrl: $imgUrl, title: $title}';
  }

  static List<BrandModel> brandList = [
    BrandModel(imgUrl: "assets/icons/png/iv_ashley_brand.png",title: "Ashley"),
    BrandModel(imgUrl: "assets/icons/png/iv_duader_brand.png",title: "Sauder"),
    BrandModel(imgUrl: "assets/icons/png/iv_lazboy_brand.png",title: "Lazboy" ),
    BrandModel(imgUrl: "assets/icons/png/iv_ashley_brand.png",title: "Ashley"),
    BrandModel(imgUrl: "assets/icons/png/iv_kepler_brand.png",title: "Keplerwood"),
  ];
}
