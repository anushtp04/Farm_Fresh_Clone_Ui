class Products {
  final String? bsp_name,
      bsp_image,
      bsp_currentprice,
      bsp_previousprice,
      bsp_itemcount;
  final String? posts_title, posts_image, posts_subtitle;
  final String? category_name, category_image;
  final String? customer_title,
      customer_subtitle,
      customer_image,
      customer_text;

  Products(
      {this.bsp_name,
      this.bsp_currentprice,
      this.bsp_image,
      this.bsp_itemcount,
      this.bsp_previousprice,
      this.posts_image,
      this.posts_subtitle,
      this.posts_title,
      this.category_image,
      this.category_name,
      this.customer_image,
      this.customer_subtitle,
      this.customer_text,
      this.customer_title});
}
