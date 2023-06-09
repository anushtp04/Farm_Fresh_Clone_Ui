import 'package:farmers_fresh_ui/models/products_model.dart';
import 'package:get/get.dart';

class CustomerController extends GetxController{
  var customer = <Products>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchCustomer();
  }

  void fetchCustomer()async {
    var fetchCustomerResult = [
      Products(
          customer_title : "Mohanlal",
          customer_subtitle : "Actor",
          customer_image : "assets/customersay/mohanlal.jpg",
          customer_text : "I am a regular customer of Farmers Fresh Zone & needless to say, I am extremely satisfied with their service & service quality! The deliveries are quick, products are fresh & I save time and effort by ordering online. The best part is, I get all of this at a really reasonable price! "
      ),
      Products(
        customer_title : "Mammootty",
       customer_subtitle : "Actor",
        customer_image : "assets/customersay/mammootty.jpg",
        customer_text : "I was extremely pleased after seeing the initiative by Farmers Fresh Zone to connect the Farmer-Supplier-Customer ecosystem. One thing that sets FFZ apart from the rest is definitely the fresh taste of their products. I also had a chance to visit their farm, it was a great experience to take a look at the beautiful farms!",
      ),
      Products(
        customer_title : "Fahadh",
        customer_subtitle : "Actor",
        customer_image : "assets/customersay/Fahadh.jpg",
        customer_text : "Being a customer of Farmers Fresh Zone, I can definitely say that I am extremely pleased with their service. You can choose from a wide range of \"safe-to-eat\" products, all of which are 100% Fresh & Natural. I appreciate their efforts in providing healthy food to the customer & helping the livelihood of farmers at the same time",
      ),
      Products(
          customer_title : "Jayasurya",
          customer_subtitle : "Actor",
          customer_image : "assets/customersay/jayasurya.jpg",
          customer_text : "A friend of mine recommended Farmers Fresh Zone to me, during the first lockdown in March 2020 & I have been a regular customer ever since! You get reliable service, convenient doorstep delivery, reasonable prices & super fresh products at your fingertips with their really easy-to-use app! I have been recommending my friends & family to switch to a healthier lifestyle with Farmers Fresh Zone."
      ),
      Products(
          customer_title : "Kunchacko",
          customer_subtitle : "Actor",
          customer_image : "assets/customersay/kunchacko.jpg",
          customer_text : "I tried Farmers Fresh Zone's products for the first time when I was expecting a child. Finding safe, chemical-free products in the city is difficult. But thanks to Farmers Fresh Zone, I was able to feed myself & my baby fruits and vegetables that are fresh, healthy & 100% Safe-to-eat. FFZ has prompt delivery, fresh & top quality products, my family & I are thoroughly impressed by their service!"
      ),
      Products(
          customer_title : "Prithviraj",
          customer_subtitle : "Actor",
          customer_image : "assets/customersay/Prithviraj.jpg",
          customer_text : "I have been ordering fruits & vegetables from Farmers Fresh Zone for almost a year now. After ordering from FFZ I realized their products are very fresh & taste better too! They not only deliver fresh harvest but also provide information about the farmers, source pesticide-free products & deliver within 16 hours of harvest. Their reliable service & transparency has earned my trust! My family & I have been eating healthy food, thanks to Farmers Fresh Zone."
      ),
      Products(
          customer_title : "Tovino",
          customer_subtitle : "Actor",
          customer_image : "assets/customersay/Tovino.jpg",
          customer_text : "As concerned parents. we wanted our kids to eat pesticide-free & healthy food and that's how we came across Farmers Fresh Zone. Their fresh products &  prompt delivery is the reason we have been a part of the Farmers Fresh Zone family for almost three years now. Farmers Fresh Zone is the best solution to countless concerned parents like us!"
      )


    ];
    customer.value = fetchCustomerResult;
  }
}
