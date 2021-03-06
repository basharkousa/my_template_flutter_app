class OrderModel {
  String title;
  String user;
  String date;
  String country;
  String imageUrl;
  String name;
  String body;
  String cost;

  OrderModel(
      {this.title,
      this.user,
      this.date,
      this.country,
      this.imageUrl,
      this.name,
      this.body,
      this.cost});

  static OrderModel userOrder = new OrderModel(
      title: "Order #21465",
      country: "Lebanon",
      date: "18/01/2020",
      user: "by John Doe.");

  static List<OrderModel> yourOrderList = [
    OrderModel(
        title: "Order #21465",
        country: "Lebanon",
        date: "18/01/2020",
        user: "by John Doe.",
        name: "Birch Lonest Bed",
        body: "Double Oak brown",
        cost: "\$499",
        imageUrl: "assets/images/test/3.jpeg"),
    OrderModel(
        title: "Order #32414",
        country: "Syria",
        date: "15/07/2020",
        user: "by John Doe.",
        name: "Birch Lonest Bed",
        body: "very Cheap",
        cost: "\$322",
        imageUrl: "assets/images/test/2.jpeg"),
    OrderModel(
        title: "Order #34452",
        country: "Syria",
        date: "30/01/2020",
        user: "by John Doe.",
        name: "Birch Lonest Bed",
        body: "very Cheap",
        cost: "\$350",
        imageUrl: "assets/images/test/1.jpeg")
  ];
}
