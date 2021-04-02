import 'dart:async';

import 'package:flutter/material.dart';

import 'package:mkt_easy_test/controller/productController.dart';
import 'package:mkt_easy_test/model/product.dart';
import 'package:mkt_easy_test/view/components/constants.dart';
import 'package:provider/provider.dart';

class ShowProducts extends StatefulWidget {

  @override
  _ShowProductsState createState() => _ShowProductsState();
}

class _ShowProductsState extends State<ShowProducts> {

  //RETURN SIGNIN AFTER TOKEN EXPIRATION
  _ShowProductsState(){
    Timer _timer = Timer(Duration(hours: 2, minutes: 55), () {
      Navigator.pop(context);
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Consumer<ProductController>(builder: (_, productController, __){
      return Scaffold(
        backgroundColor: kPrimaryColor,
        body: Column(
          children: [

            //BUTTON EXIT
            Container(
              margin: EdgeInsets.only(right: width * 0.01),
              alignment: Alignment.bottomRight,
              height: height * 0.12,
              child: IconButton(
                icon: Icon(
                  Icons.close_rounded,
                  color: kNeonBlue,
                  size: 26,
                ),
                onPressed: () {
                  Navigator.pop(context);
                  productController.products.clear();
                },
              ),
            ),

            //PRODUCTS LIST
            if(productController.products.isNotEmpty && productController.message == 'ok')
            Flexible(
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: productController.products.length,
                  itemBuilder: (context, index){
                    Product product = productController.products[index];
                    return Card(
                      margin: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: width * 0.025),
                      color: kDarkestColor,
                      child: Container(
                        padding: EdgeInsets.all(width * 0.07),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(product.description.trim(), style: kProductStyle),
                            Text('${product.internalCode}', style: kCodeStyle),
                            SizedBox(height: height * 0.02),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('R\$ ${product.unitPrice}', style: kPriceStyle),
                                Text('${product.barCode}', style: kLabelStyle),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),

            //MESSAGE ERROR
            if(productController.message != 'ok')
              Flexible(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                  child: Text(productController.message, style: kBodyStyle),
                ),
              ),

            //LOADING
            if(productController.loading)
              Flexible(
                  child: CircularProgressIndicator(
                    backgroundColor: kNeonBlue,
                  )),

            //INSTRUCTIONS
            if(productController.products.isEmpty && !productController.loading && productController.message.isEmpty)
            Flexible(
              child: Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: height * 0.07),
                padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                child: Text(kInstructionShowProducts, style: kBodyStyle),
              ),
            )
          ],
        ),

        //BOTTOM BAR AND FLOAT BUTTON
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: kLightPrimaryColor,
          child: Container(height: height * 0.03),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kDarkPink,
          onPressed: () async {
           await productController.getProducts();
          },
          child: Icon(
            Icons.list_alt_rounded,
            size: 30,
            color: kLightPrimaryColor,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      );
    });
  }
}
