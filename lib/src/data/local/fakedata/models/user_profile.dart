class UserModel {
  String firstName, imageUrl,lastName, education,gender,dateOfBirth,nationality,emailUser,profession = "";
   String mobileNumber;
  bool isVerified = true;
  bool isLogged = false;
  List<UserActivityModel> userActivities = [];
  List<UserReviewsModel> userReviews = [];


  UserModel(
      {this.firstName,
        this.dateOfBirth,
        this.emailUser,
      this.profession,
      this.education,
      this.isVerified,
      this.userActivities,
      this.imageUrl,
      this.userReviews,
        this.nationality,
      this.isLogged,
        this.lastName,this.gender,
        this.mobileNumber
      });

  static UserModel currentUser = new UserModel(
      firstName: "John ",
      emailUser: "John.doe@gmail.com",
      lastName: "Doe ",
      dateOfBirth: "23 / 08 / 1990",
      profession: "Interior Designer",
      nationality: "Lebanese",
      education: "Amateur",
      gender: "Male",
      imageUrl:"assets/icons/png/iv_profile.png",
      isVerified: true,
      mobileNumber: "0994550240",
      userActivities: UserActivityModel.activityList,
      userReviews: UserReviewsModel.reviewsUserList,
      isLogged: false);

}

class UserReviewsModel {
  final String name;
  final String description;
  final String imageUrl;
  final String rating;
  bool selected = false;

  UserReviewsModel(
      {this.name, this.imageUrl, this.description, this.rating, this.selected});

  static List<UserReviewsModel> reviewsUserList = [
    UserReviewsModel(
        name: "Birch Lonest Bed",
        description: "Double Oak brown",
        imageUrl: "assets/images/test/1.jpeg",
        rating: "4.0"),
    UserReviewsModel(
        name: "Tyssedal",
        description: "Very Comfortable",
        imageUrl: "assets/images/test/2.jpeg",
        rating: "4.4"),
    UserReviewsModel(
        name: "Net",
        description: "Very Cheap",
        imageUrl: "assets/images/test/3.jpeg",
        rating: "2.4"),
    UserReviewsModel(
        name: "Net",
        description: "Very Cheap",
        imageUrl: "assets/images/test/4.jpeg",
        rating: "3.5"),
    UserReviewsModel(
        name: "Net",
        description: "Very Cheap",
        imageUrl: "assets/images/test/1.jpeg",
        rating: "4.5"),
    UserReviewsModel(
        name: "Net",
        description: "Very Cheap",
        imageUrl: "assets/images/test/1.jpeg",
        rating: "4"),

  ];

  @override
  String toString() {
    return 'ReviewUserModel{name: $name, description: $description, imageUrl: $imageUrl}';
  }
}

class UserActivityModel {
  String title, body, imageUrl;

  UserActivityModel({this.title, this.body, this.imageUrl});

  static List<UserActivityModel> activityList = [
    UserActivityModel(
        title: "Purchase",
        body: "Purchase order #2548 on 18/08/2020",
        imageUrl: "assets/icons/svg/ic_purchase.svg"),
    UserActivityModel(
        title: "Account",
        body: "Confirmed email john.doe@gmail.com",
        imageUrl: "assets/icons/svg/ic_account.svg"),
  ];
}
