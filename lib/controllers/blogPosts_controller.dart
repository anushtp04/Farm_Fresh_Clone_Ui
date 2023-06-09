import 'package:get/get.dart';

import '../models/products_model.dart';


class BlogPostController extends GetxController {
  var blogPosts = <Products>[].obs;

  void onInit() {
    super.onInit();
    fetchBP();
  }

  void fetchBP() async {
    await Future.delayed(Duration(seconds: 2));

    var blogPostsResult = [
      Products(
          posts_title: "Control Blood Pressure, the ri",
          posts_image: "assets/blogposts/bloodpressure.jpg",
          posts_subtitle: "8 months ago"
      ),
      Products(
          posts_title: "Five Reasons why Broccoli shou ",
          posts_image: "assets/blogposts/brocolli.jpg",
          posts_subtitle: "8 months ago"
      ),
      Products(
          posts_title: "Five tips that prevent you from ",
          posts_image: "assets/blogposts/five.jpg",
          posts_subtitle: "9 months ago"
      )
    ];
    blogPosts.value = blogPostsResult;
  }
}



