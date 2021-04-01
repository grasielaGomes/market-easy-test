import 'package:flutter/material.dart';

import 'package:mkt_easy_test/controller/productController.dart';
import 'package:mkt_easy_test/model/product.dart';
import 'package:mkt_easy_test/view/components/constants.dart';
import 'package:provider/provider.dart';

class ShowProducts extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Consumer<ProductController>(builder: (_, apiController, __){
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
                  apiController.products.clear();
                },
              ),
            ),

            //PRODUCTS LIST
            if(apiController.products.isNotEmpty)
            Flexible(
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: apiController.products.length,
                  itemBuilder: (context, index){
                    Product product = apiController.products[index];
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

            //LOADING
            if(apiController.loading)
              Flexible(
                  child: Center(
                    child: CircularProgressIndicator(
                      backgroundColor: kNeonBlue,
                    ),
                  )),

            //INSTRUCTIONS
            if(apiController.products.isEmpty && !apiController.loading)
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
           final products = await apiController.getProducts();
           print(products.length);
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
