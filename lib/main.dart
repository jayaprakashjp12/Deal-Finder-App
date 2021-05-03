import 'package:deal_finder_app/providers/products_list.dart';
import 'package:deal_finder_app/screens/deals_overview_screen.dart';
import 'package:deal_finder_app/widgets/bottom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProductsList(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
        routes:{
          DealsOverview.routeName: (ctx) => DealsOverview(),
        }

         ,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.favorite))],
        title: Text('Deal Finder'),
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Offers and coupons',
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Card(
              child: Text('title'),
              color: Colors.black,
            ),
            SizedBox(
              height: 150,
              width: double.infinity,
              child: Card(
                  color: Colors.orange,
                  child: Center(
                    child: Text(
                      'amazon',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 150,
              width: double.infinity,
              child: Card(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'flipkart ',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 150,
              width: double.infinity,
              child: Card(
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      'Myntra',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBarWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).pushNamed(DealsOverview.routeName);
        },
        child: const Icon(Icons.search),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
