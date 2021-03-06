
class Data {
  static List<Deal> sale_rooms_list = [
    Deal("EPIC DEALS", "40% OFF","assets/images/test/1.jpeg"),
    Deal("50% OFF", "Code free Delivery ","assets/images/test/2.jpeg"),
    Deal("EPIC DEALS  ", "Code free Delivery","assets/images/test/3.jpeg"),
    Deal("50% OFF", "Code free Delivery","assets/images/test/1.jpeg"),
  ];

  static List<Deal> sale_rooms_list_arabic = [
    Deal("صفقات محلية", "40% خصم","assets/images/test/1.jpeg"),
    Deal("50% خصم", "توصيل مجاني ","assets/images/test/2.jpeg"),
    Deal("صفقات محلية بيبيبيبس يسي ", "توصيل مجاني","assets/images/test/3.jpeg"),
    Deal("40% خصم", "Code: توصيل مجاني","assets/images/test/1.jpeg"),
  ];


  static List<Deal> bedroom_ideas_list = [
    Deal("Minimalist Luxury ", "Code free Delivery","assets/images/test/iv_bedroom_idea3.jpg"),
    Deal("Bedtime Routine", "Code free Delivery","assets/images/test/iv_bedroom_idea4.jpg"),
    Deal("Minimalist Luxury", "40% OFF","assets/images/test/iv_bedroom_idea2.jpg"),
    Deal("Bedtime Routine", "Code free Delivery ",
        "assets/images/test/iv_bedrom_idea.jpg"),
  ];

  static List<Deal> bedroom_ideas_listt_arabic = [
    Deal("الحد الأدنى الفاخرة", "توصيل مجاني","assets/images/test/iv_bedroom_idea3.jpg"),
    Deal("النوم روتين", "Code: توصيل مجاني","assets/images/test/iv_bedroom_idea4.jpg"),
    Deal("الحد الأدنى الفاخرة", "40% خصم","assets/images/test/iv_bedroom_idea2.jpg"),
    Deal("النوم روتين", "توصيل مجاني ","assets/images/test/iv_bedrom_idea.jpg"),

  ];

}

class Deal{
  final String title;
  final String body;
  final String image;

  Deal(this.title,this.body, this.image);

  @override
  String toString() {
    return 'Deal{title: $title, body: $body, image: $image}';
  }


}