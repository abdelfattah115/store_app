import 'package:flutter/material.dart';
import 'package:store_app/layouts/details-screen.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/shared/constents.dart';
import 'package:store_app/widgets/home/product_cart.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            Expanded(
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 70) ,
                      decoration: BoxDecoration(
                       color: kBackgroundColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                    ),
                    ListView.builder(
                        itemCount: products.length,
                        itemBuilder: (context,index) => ProductCard(
                          itemIndex: index,
                          product: products[index],
                          press: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => DetailsScreen(product: products[index],),
                            ));
                          },
                        ),
                    ),
                  ],
                )
            ),
          ],
        )
    );
  }
}
