import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/shared/constents.dart';
import 'package:store_app/widgets/details/color_dot.dart';
import 'package:store_app/widgets/details/product_image.dart';

class DetailsBody extends StatelessWidget {

  final Product product;

  const DetailsBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Center(
               child: Hero(
                 tag: '${product.image}',
                 child: ProductImage(size: size,
                   image:product.image,
                 ),
               ),
             ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     ColorDot(
                       fillColor: kTextLightColor,
                       isSelect: true,
                     ),
                     ColorDot(
                       fillColor: Colors.blue,
                       isSelect: false,
                     ),
                     ColorDot(
                       fillColor: Colors.red,
                       isSelect: false,
                     ),
                   ],

                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/2),
                child: Text(product.title,
                  style: Theme.of(context).textTheme.headline6,),
              ),
              Text('السعر \$${product.price}',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: kSecondaryColor
              ),),
              SizedBox(
                height: kDefaultPadding,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding/2),
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding*1.5,
              vertical: kDefaultPadding/2,
          ),
          child: Text(product.description,
          style: TextStyle(
            fontSize: 19,
            color: Colors.white,
          ),),
        ),
      ],
    );
  }
}
