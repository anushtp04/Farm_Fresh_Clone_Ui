import 'package:farmers_fresh_ui/models/products_model.dart';
import 'package:get/get.dart';


class BSPController extends GetxController {
  var bsProducts = <Products>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchBSP();
  }

  void fetchBSP() async {
    await Future.delayed(Duration(seconds: 2));
    var bsProductResult = [
      Products(bsp_name: "Banana Nendran- Semi ripe (950g - 1050g)",
          bsp_image: "assets/bestsellingproducts/banana.jpg",
          bsp_currentprice: "₹42",
          bsp_previousprice: "₹65",
          bsp_itemcount: "1.00 NOS"),

      Products(bsp_name: "Big onion (950g - 1050g)",
          bsp_image: "assets/bestsellingproducts/onion.jpg",
          bsp_currentprice: "₹25",
          bsp_previousprice: "₹38",
          bsp_itemcount: "1.00 NOS"),

      Products(bsp_name: "Avial Cut Family Pack 500g",
          bsp_image: "assets/bestsellingproducts/avial.jpg",
          bsp_currentprice: "₹89",
          bsp_previousprice: "₹110",
          bsp_itemcount: "1.00 NOS"),

      Products(
          bsp_name: "Ladies Finger",
          bsp_image: "assets/bestsellingproducts/ladiesfinger.jpg",
          bsp_currentprice: "₹18",
          bsp_previousprice: "₹31",
          bsp_itemcount: "0.30 Kg"
      ),

      Products(
          bsp_name: "Green Apple - Granny Smith (450g-550g)",
          bsp_image: "assets/bestsellingproducts/greenapple.jpg",
          bsp_currentprice: "₹149",
          bsp_previousprice: "₹199",
          bsp_itemcount: "1.00 NOS"
      ),

      Products(
          bsp_name: "Njali Poovan- Semi ripe (450gm -550gm)",
          bsp_image: "assets/bestsellingproducts/poovan.jpg",
          bsp_currentprice: "₹42",
          bsp_previousprice: "₹54",
          bsp_itemcount: "1.00 NOS"
      ),

      Products(
          bsp_name: "Broccoli Florets 200g",
          bsp_image: "assets/bestsellingproducts/brocolli.jpg",
          bsp_currentprice: "₹119",
          bsp_previousprice: "₹180",
          bsp_itemcount: "1.00 NOS"
      ),

      Products(
          bsp_name: "Citrus - Imported (450gm-550gm)",
          bsp_image: "assets/bestsellingproducts/citrus.jpg",
         bsp_currentprice: "₹99",
          bsp_previousprice: "₹137",
          bsp_itemcount: "1.00 NOS"
      ),

      Products(
          bsp_name: "Amaranthus Green (200 gm)",
          bsp_image: "assets/bestsellingproducts/amaranthes.jpg",
          bsp_currentprice: "₹19",
          bsp_previousprice: "₹24",
          bsp_itemcount: "1.00 NOS"
      ),

      Products(
          bsp_name: "Button Mushroom (200 g)",
          bsp_image: "assets/bestsellingproducts/mushroom.jpg",
          bsp_currentprice: "₹56",
          bsp_previousprice: "₹75",
          bsp_itemcount: "1.00 Pack"
      ),
      Products(
          bsp_name: "Kiwi (3 Nos)",
          bsp_image: "assets/bestsellingproducts/kiwi.jpg",
          bsp_currentprice: "₹119",
          bsp_previousprice: "₹152",
          bsp_itemcount: "1.00 Box"
      ),

      Products(
          bsp_name: "Cauliflower - 1 Nos (600g-900g)",
          bsp_image: "assets/bestsellingproducts/cauli.jpg",
          bsp_currentprice: "₹49",
          bsp_previousprice: "₹75",
          bsp_itemcount: "1.00 NOS"
      ),

      Products(
          bsp_name: "Watermelon Yellow (2.0 kg - 2.5kg)",
          bsp_image: "assets/bestsellingproducts/yellowwatermelon.jpg",
          bsp_currentprice: "₹89",
          bsp_previousprice: "₹120",
          bsp_itemcount: "1.00 NOS"
      ),

      Products(
          bsp_name: "Sambar Cut Mini Pack 250g",
          bsp_image: "assets/bestsellingproducts/sambarcut.jpg",
          bsp_currentprice: "₹59",
          bsp_previousprice: "₹69",
          bsp_itemcount: "1.00 Box"
      )
    ];
    bsProducts.value = bsProductResult;
  }
}

