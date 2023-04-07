import 'package:carousel_slider/carousel_slider.dart';
import 'package:farmers_fresh_ui/datas.dart';
import 'package:flutter/material.dart';
import 'package:bottom_bar_matu/bottom_bar_matu.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextStyle buttonbarText = TextStyle(
      fontSize: 12,
      color: Colors.grey[700],
    );

    ///gridList shop by catagories
    var gridListName = catagories.map((map) => map["name"]).toList();
    var gridListImage = catagories.map((map) => map["image"]).toList();

    ///grid best selling products
    var sellingProductsGridName = bestSellingProducts.map((value) => value["name"]).toList();
    var sellingProductsGridImage = bestSellingProducts.map((value) => value["image"]).toList();
    var sellingProductsGridCPrice = bestSellingProducts.map((value) => value["currentprice"]).toList();
    var sellingProductsGridPPrice = bestSellingProducts.map((value) => value["previousprice"]).toList();
    var sellingProductsGridCount = bestSellingProducts.map((value) => value["itemcount"]).toList();

    ///blog posts
    var ourBlogPostsTitle = blogposts.map((data) => data["title"]).toList();
    var ourBlogPostsimage = blogposts.map((data) => data["image"]).toList();
    var ourBlogPostsSubtitle = blogposts.map((data) => data["subtitle"]).toList();

    ///customer say
    var customerSayTitle = customerSay.map((review) => review["title"]).toList();
    var customerSaySubTitle = customerSay.map((review) => review["subtitle"]).toList();
    var customerSayImage = customerSay.map((review) => review["image"]).toList();
    var customerSayText = customerSay.map((review) => review["text"]).toList();

     ///news images
    var newsImages = [
      "assets/news/news1.png",
      "assets/news/news2.png",
      "assets/news/news3.png",
      "assets/news/news4.png",
    ];

     return Scaffold(
      bottomNavigationBar: BottomBarBubble(
        items: [
          BottomBarItem(iconData: Icons.home, label: "Home"),
          BottomBarItem(iconData: Icons.shopping_cart, label: "Cart"),
          BottomBarItem(
              iconData: Icons.account_circle_rounded, label: "Account"),
        ],
      ),
      body: CustomScrollView(slivers: [
        SliverAppBar(
          title: Text(
            "FARMERS FRESH CLONE",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Wrap(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.white,
                    size: 22,
                  ),
                  Text(
                    "Kochi",
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                    size: 20,
                  )
                ],
              ),
            )
          ],
          expandedHeight: 100,
          // pinned: true,
          // floating: true,
          bottom: AppBar(
            elevation: 0,
            title: Container(
              margin: EdgeInsets.only(bottom: 5),
              color: Colors.white,
              height: 40,
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Search for Vegetables, Fruits, .....",
                    prefixIcon: Icon(
                      Icons.search,
                      size: 22,
                    )),
              ),
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([

              ///first item
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.green[50],
                height: 56,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    listNames.length,
                        (index) =>
                        Container(
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.green),
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.all(Radius.circular(
                                    20))),
                            child: Center(
                              child: Text(
                                listNames[index],
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.green[900],
                                    fontWeight: FontWeight.w600),
                              ),
                            )),
                  ),
                ),
              ),

              ///2nd item
              CarouselSlider(
                items: List.generate(
                  carouselImages.length,
                      (index) =>
                      Container(
                        //     color: Colors.primaries[Random().nextInt(
                        //   Colors.primaries.length,
                        // )],
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(carouselImages[index]),
                                fit: BoxFit.fill)),
                      ),
                ),
                options: CarouselOptions(
                    height: 200,
                    viewportFraction: 1,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(seconds: 1),
                    // autoPlayInterval: Duration(seconds: 10),
                    enableInfiniteScroll: true,
                    autoPlayCurve: Curves.fastOutSlowIn),
              ),

              ///3rd item
              Container(
                margin: EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/buttonBar/1.png",
                              height: 35,
                              width: 35,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text("30 MIN POLICY", style: buttonbarText)
                          ],
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/buttonBar/2.png",
                              height: 35,
                              width: 35,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text("TRACEABILITY", style: buttonbarText)
                          ],
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/buttonBar/3.png",
                              height: 35,
                              width: 35,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text("LOCAL SOURCING", style: buttonbarText)
                          ],
                        )),
                  ],
                ),
              ),

              ///4th item
              Container(
                  margin: EdgeInsets.only(left: 10, bottom: 20),
                  child: Text(
                    "Shop By Catagories",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  )),
            ])),

        ///5th item
        SliverGrid(
            delegate: SliverChildBuilderDelegate(
              childCount: gridListName.length,
                  (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: 5,right: 5),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 5.0,
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius
                                  .circular(10), topRight: Radius.circular(10)),
                              color: Colors.blue,
                            image: DecorationImage(
                              image: AssetImage("${gridListImage[index]}"),
                              fit: BoxFit.fill
                            )
                          ),
                          height: 100,
                          // color: Colors.blue,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Text("${gridListName[index]}",style: TextStyle(fontSize: 13,),),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 20)),

        ///6th item
        SliverList(delegate: SliverChildListDelegate(
          [
            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/catagories/container.png"),
                  fit: BoxFit.fill
                )
              ),
              height: 160,
            ),
            Container(
                margin: EdgeInsets.only(left: 10, bottom: 20),
                child: Text(
                  "Best Selling Products",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                )),
          ]
        )),

        ///7th item

        SliverGrid(delegate: SliverChildBuilderDelegate(
          childCount: sellingProductsGridCount.length,
          (context, index) {
            return Container(
              margin: EdgeInsets.only(left: 5,right: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color.fromRGBO(220, 220, 220, 1))

              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 130,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("${sellingProductsGridImage[index]}"),
                        fit: BoxFit.fill
                      )
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5,bottom: 5,right: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${sellingProductsGridName[index]}",style: TextStyle(
                            fontWeight: FontWeight.w500,fontSize: 16
                        )),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text("${sellingProductsGridCPrice[index]}",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                            SizedBox(width: 10,),
                            Text("${sellingProductsGridPPrice[index]}",style: TextStyle(
                             decoration: TextDecoration.lineThrough,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.grey[700],
                            ),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("${sellingProductsGridCount[index]}",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15)),
                            ElevatedButton(onPressed: (){}, child: Padding(
                              padding: EdgeInsets.only(left: 10,right: 10),
                              child: Text("ADD"),
                            ))
                          ],
                        )
                      ],
                    ),
                  )

                ],
              ),
            );
          },
        ), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
        mainAxisSpacing: 20,
        // mainAxisExtent: 220,
        childAspectRatio: 3/4)),

        ///8th items
        SliverList(delegate: SliverChildListDelegate(
          [
            Container(
              margin: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){}, child: Text("VIEW MORE",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
                ),)),

            Divider(color: Colors.grey[300],
            thickness: 10,),

            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/carousel/certificate.png"),
                  fit: BoxFit.fill
                )
              ),
            ),
            Divider(color: Colors.grey[300],
              thickness: 10,),

            ///9th item
            Container(
                margin: EdgeInsets.only(left: 10, bottom: 20,top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Our Blog Posts",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Color.fromRGBO(220, 220, 220, 1))
                            ),
                            margin: EdgeInsets.only(left: 4,right: 4),
                            width: 150,
                            child: Column(
                              children: [
                                Container(
                                  height: 110,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("${ourBlogPostsimage[index]}"),
                                      fit: BoxFit.fill
                                    )

                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 5,top: 5),
                                        child: Text("${ourBlogPostsTitle[index]}",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Text("${ourBlogPostsSubtitle[index]}"),
                                            Icon(Icons.arrow_forward)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        itemCount: 3,),
                    )
                  ],
                )),
            TextButton(onPressed: (){}, child: Text("VIEW MORE",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
            Divider(color: Colors.grey[300],
              thickness: 10,),

            ///10th item
            CarouselSlider(
                items: List.generate(customerSayText.length, (index) => Container(
                  // height: 200,
                  margin: EdgeInsets.only(left: 10,right: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(220, 220, 220, 1))
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("${customerSayImage[index]}"),
                        ),
                        title: Text("${customerSayTitle[index]}"),
                        subtitle: Text("${customerSaySubTitle[index]}"),
                        trailing: Icon(Icons.format_quote),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5,right: 5),
                        child: Text("${customerSayText[index]}"),
                      )
                    ],
                  ),

                )),
                options: CarouselOptions(
              height: 220,
                  autoPlay: true,
                  autoPlayCurve: Curves.linear,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 1

            )),

            ///11th item
            Container(
              height: 130,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("This is Kochi-based-farm-to-fork online marketplace is ",style: TextStyle(fontSize: 15),),
                  Text("connecting farmers directly to customers",style: TextStyle(fontSize: 15),),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(4, (index) => Container(
                      height: 35,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(newsImages[index])
                          )
                      ),
                    ),)
                  )
                ],
              ),
            ),

            Divider(color: Colors.grey[300],
              thickness: 10,),

            ///12th item

            Container(
              padding: EdgeInsets.only(left: 10),
              height: 260,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Text("Get to Know us",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Text("About Us | Our Farmers | Blog",style: TextStyle(fontSize: 14,color: Colors.grey),),
                  SizedBox(height: 30,),

                  Text("Useful Links",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Text("Privacy Policy | Return & Refund Policy | Terms & Conditions",style: TextStyle(fontSize: 14,color: Colors.grey),),

                  Padding(
                    padding: EdgeInsets.only(left: 20,right: 20,top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.twitter,color: Colors.grey[700],)),
                        IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.youtube,color: Colors.grey[700])),
                        IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.facebookF, color: Colors.grey[700])),
                        IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.instagram, color: Colors.grey[700])),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              padding: EdgeInsets.only(top:20),
              color: Colors.green,
              child: Text(
                "Copyright @ 2021 Farmers Fresh Zone. All Rights Reserved",
                style: TextStyle(fontSize: 13,color: Colors.white),
                textAlign: TextAlign.center,

              ),
            )







          ]
        ))



      ]),
    );
  }
}
