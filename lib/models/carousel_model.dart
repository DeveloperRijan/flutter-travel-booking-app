class CarouselModel {
  var image;

  CarouselModel(this.image);
}

List<CarouselModel> carousels =
    carouselsData.map((item) => CarouselModel(item['image_item'])).toList();

var carouselsData = [
  {"image_item": "assets/images/carousel_flight_discount.png"},
  {"image_item": "assets/images/carousel_hotel_discount.png"},
  {"image_item": "assets/images/carousel_covid_discount.png"}
];
