

import 'package:deal_finder_app/providers/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DealWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deal = Provider.of<Product>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {},
          child: Image.network(
            deal.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        header: Text(deal.title),
        footer: GridTileBar(
          
          backgroundColor: Colors.black38,
          leading: Text('\$${deal.price.toString()}',style: TextStyle(color: Colors.white),),
          trailing: IconButton(
            onPressed: (){},
            icon: Icon(Icons.favorite_outline),
          ),
        ),
      ),
    );
  }
}
