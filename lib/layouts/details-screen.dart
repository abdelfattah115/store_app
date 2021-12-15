import 'package:flutter/material.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/shared/constents.dart';
import 'package:store_app/widgets/details/details_body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        leading: IconButton(
          color: Colors.blue,
          padding: EdgeInsets.only(right: kDefaultPadding),
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text('رجوع',
        style: Theme.of(context).textTheme.bodyText2,
        ),
      ),
      body: DetailsBody(
        product: product,
      ),
    );
  }
}
