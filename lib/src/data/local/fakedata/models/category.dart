class CategoryData {
  static List<SubCategory> subCategories = [
    SubCategory(name: "Beds",backgroundUrl: "assets/images/test/iv_subcate1.jpg",),
    SubCategory(
      name: "Wardrobes",backgroundUrl: "assets/images/test/iv_subcate2.jpg",
    ),
    SubCategory(
      name: "Headboards",backgroundUrl: "assets/images/test/iv_subcate3.jpg",
    ),
    SubCategory(
      name: "Accessories",backgroundUrl: "assets/images/test/iv_subcate4.jpg",
    ),
    SubCategory(
      name: "Bed Bases",backgroundUrl: "assets/images/test/iv_subcate2.jpg",
    ),
    SubCategory(
      name: "Lighting",backgroundUrl: "assets/images/test/iv_subcate3.jpg",
    ),
    SubCategory(
      name: "Mattress",backgroundUrl: "assets/images/test/iv_subcate1.jpg",
    ),
    SubCategory(
      name: "Dresser Table",backgroundUrl: "assets/images/test/iv_subcate2.jpg",
    ),
    SubCategory(
      name: "Night Stand",backgroundUrl: "assets/images/test/iv_subcate3.jpg",
    ),
    SubCategory(
      name: "Mirrors",backgroundUrl: "assets/images/test/iv_subcate1.jpg",
    ),
    SubCategory(
      name: "Wall Mounted Bed",backgroundUrl: "assets/images/test/iv_subcate2.jpg",
    ),
    SubCategory(
      name: "Wall Mounted Bed",backgroundUrl: "assets/images/test/iv_subcate3.jpg",
    ),
  ];
  static List<SubCategory> subCategoriesArabic = [
    SubCategory(name: "سرير",backgroundUrl: "assets/images/test/iv_subcate1.jpg",),
    SubCategory(
      name: "خزائن",
      backgroundUrl: "assets/images/test/iv_subcate2.jpg",
    ),
    SubCategory(
      name: "الألواح الأمامية",backgroundUrl: "assets/images/test/iv_subcate3.jpg",
    ),
    SubCategory(
      name: "مستلزمات",backgroundUrl: "assets/images/test/iv_subcate4.jpg",
    ),
    SubCategory(
      name: "قواعد السرير",backgroundUrl: "assets/images/test/iv_subcate2.jpg",
    ),
    SubCategory(
      name: "إضاءة",backgroundUrl: "assets/images/test/iv_subcate3.jpg",
    ),
    SubCategory(
      name: "فراش",backgroundUrl: "assets/images/test/iv_subcate1.jpg",
    ),
    SubCategory(
      name: "طاولة تزيين",backgroundUrl: "assets/images/test/iv_subcate2.jpg",
    ),
    SubCategory(
      name: "منضدة سرير",backgroundUrl: "assets/images/test/iv_subcate3.jpg",
    ),
    SubCategory(
      name: "المرايا",backgroundUrl: "assets/images/test/iv_subcate1.jpg",
    ),
    SubCategory(
      name: "سرير معلق على الحائط",backgroundUrl: "assets/images/test/iv_subcate2.jpg",
    ),
    SubCategory(
      name: "سرير معلق على الحائط",backgroundUrl: "assets/images/test/iv_subcate3.jpg",
    ),
  ];
  static List<Category> category_list = [
    Category(
      name: "Beedroom",
      icon: "assets/icons/png/ic_bedroom_category.png",
      subCategories: subCategories,
      backgroundUrl: "assets/images/test/3.jpeg",
      description:
          "It’s time to Save Our Sleep! A good night’s sleep is hard to get. With our affordable bedroom solutions, everyone can achieve spectacular sleep.",
    ),
    Category(
        name: "Living Room",
        icon: "assets/icons/png/ic_livingroom_category.png",
        backgroundUrl: "assets/images/test/3.jpeg",
        description:
            "It’s time to Save Our Sleep! A good night’s sleep is hard to get. With our affordable bedroom solutions, everyone can achieve spectacular sleep.",
        subCategories: subCategories),
    Category(
        name: "Baby & Children",
        icon: "assets/icons/png/ic_baby_category.png",
        backgroundUrl: "assets/images/test/3.jpeg",
        description:
            "It’s time to Save Our Sleep! A good night’s sleep is hard to get. With our affordable bedroom solutions, everyone can achieve spectacular sleep.",
        subCategories: subCategories),
    Category(
        name: "Kitchen",
        icon: "assets/icons/png/ic_kitchen_category.png",
        backgroundUrl: "assets/images/test/3.jpeg",
        description:
            "It’s time to Save Our Sleep! A good night’s sleep is hard to get. With our affordable bedroom solutions, everyone can achieve spectacular sleep.",
        subCategories: subCategories),
    Category(
        name: "Offices",
        icon: "assets/icons/png/ic_offices_category.png",
        backgroundUrl: "assets/images/test/3.jpeg",
        description:
            "It’s time to Save Our Sleep! A good night’s sleep is hard to get. With our affordable bedroom solutions, everyone can achieve spectacular sleep.",
        subCategories: subCategories)
  ];

  static List<Category> category_list_arabic = [
    Category(
        name: "غرفة نوم",
        icon: "assets/icons/png/ic_bedroom_category.png",
        backgroundUrl: "assets/images/test/3.jpeg",
        description:
            "حان الوقت لإنقاذ نومنا! من الصعب الحصول على نوم جيد. مع حلول غرف النوم بأسعار معقولة ، يمكن للجميع تحقيق نوم مذهل.",
        subCategories: subCategoriesArabic),
    Category(
        name: "غرفة المعيشة",
        icon: "assets/icons/png/ic_livingroom_category.png",
        backgroundUrl: "assets/images/test/3.jpeg",
        description:
            "حان الوقت لإنقاذ نومنا! من الصعب الحصول على نوم جيد. مع حلول غرف النوم بأسعار معقولة ، يمكن للجميع تحقيق نوم مذهل.",
        subCategories: subCategoriesArabic),
    Category(
        name: "الرضَع و الأطفال",
        icon: "assets/icons/png/ic_baby_category.png",
        backgroundUrl: "assets/images/test/3.jpeg",
        description:
            "حان الوقت لإنقاذ نومنا! من الصعب الحصول على نوم جيد. مع حلول غرف النوم بأسعار معقولة ، يمكن للجميع تحقيق نوم مذهل.",
        subCategories: subCategoriesArabic),
    Category(
        name: "مطبخ",
        icon: "assets/icons/png/ic_kitchen_category.png",
        backgroundUrl: "assets/images/test/3.jpeg",
        description:
            "حان الوقت لإنقاذ نومنا! من الصعب الحصول على نوم جيد. مع حلول غرف النوم بأسعار معقولة ، يمكن للجميع تحقيق نوم مذهل.",
        subCategories: subCategoriesArabic),
    Category(
        name: "مكاتب",
        icon: "assets/icons/png/ic_offices_category.png",
        backgroundUrl: "assets/images/test/3.jpeg",
        description:
            "حان الوقت لإنقاذ نومنا! من الصعب الحصول على نوم جيد. مع حلول غرف النوم بأسعار معقولة ، يمكن للجميع تحقيق نوم مذهل.",
        subCategories: subCategoriesArabic)
  ];
}

class Category {
  String id;
  String name;
  String icon;
  String backgroundUrl;
  String description;
  List<SubCategory> subCategories;

  Category(
      {this.name,
      this.icon,
      this.id,
      this.backgroundUrl,
      this.subCategories,
      this.description});

  @override
  String toString() {
    return 'Category{name: $name, icon: $icon}';
  }
}

class SubCategory {
  String id;
  String name;
  String icon;
  String backgroundUrl;

  SubCategory({this.name, this.icon, this.id, this.backgroundUrl});

  @override
  String toString() {
    return 'Category{name: $name, icon: $icon}';
  }
}
