import 'package:deal_finder_app/providers/products_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DealDetailScreen extends StatelessWidget {
  static const routeName = '/deal-detail';
  @override
  Widget build(BuildContext context) {
    final String dealId = ModalRoute.of(context).settings.arguments as String;
    final loadedDeal = Provider.of<ProductsList>(context).findById(dealId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedDeal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                loadedDeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Text('\$${loadedDeal.price}'),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              //margin: EdgeInsets.all(10),
              color: Colors.amber,
              child: Text(
                loadedDeal.description,
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
