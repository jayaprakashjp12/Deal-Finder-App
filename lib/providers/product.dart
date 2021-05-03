import 'package:flutter/foundation.dart';

class Product with ChangeNotifier{
  final String id;
  final String title;
  final String description;
  final double price;
  bool isCodAvailable =true;
  bool isAddressAvailable = true;
  final double rating;
  String imageUrl ='';
  bool isFavourite ;
  Product({
    @required this.id,
    @required this.description,
    @required this.price,
    this.isCodAvailable,
    this.isAddressAvailable,
    @required   this.rating,
    this.imageUrl,
    this.isFavourite=false,
    @required this.title,  
  });
  void toggleFavouriteStatus(){
    isFavourite =!isFavourite;
    notifyListeners();
  }
}
