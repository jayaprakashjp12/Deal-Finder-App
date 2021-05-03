import 'package:deal_finder_app/providers/products_list.dart';
import 'package:deal_finder_app/widgets/deal_overview_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DealsOverview extends StatelessWidget {
  static final routeName = '/deals';
  @override
  Widget build(BuildContext context) {
    final _productsList = Provider.of<ProductsList>(context);
    final _products = _productsList.deals;
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Results'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(15),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisExtent: 200,
          mainAxisSpacing: 10,
          childAspectRatio: 3 / 2,
        ),
        itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
          value: _products[index],
          child: DealWidget(),
        ),
        itemCount: _products.length,
      ),
    );
  }
}
