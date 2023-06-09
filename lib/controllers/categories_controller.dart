import 'package:get/get.dart';

import '../models/products_model.dart';


class CategoriesController extends GetxController {
  var categories = <Products>[].obs;

  void onInit() {
    super.onInit();
    fetchCategory();
  }

  void fetchCategory() async {
    await Future.delayed(Duration(seconds: 2));

    var categoriesResult = [
      Products(
          category_name : "Offers",
          category_image : "assets/catagories/today.png"
      ),
      Products(
          category_name : "Vegitables",
          category_image : "assets/catagories/vegitables.jpg"
      ),
      Products(
          category_name : "Fruits",
         category_image : "assets/catagories/fruits.jpg"
      ),
      Products(
          category_name : "Exotic",
          category_image : "assets/catagories/exotic.jpeg"
      ),
      Products(
          category_name : "Fresh Cuts",
          category_image : "assets/catagories/freshcut.jpg"
      ),
      Products(
          category_name : "Nutrition Chargers",
          category_image : "assets/catagories/nutrition.jpg"
      ),
      Products(
         category_name : "Gourment Salads",
          category_image : "assets/catagories/salads.jpg"
      ),
    ];
    categories.value = categoriesResult;
  }
}
