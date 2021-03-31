import 'package:flutter/material.dart';
import 'package:mkt_easy_test/view/components/constants.dart';

class ShowProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(right: width * 0.05),
            alignment: Alignment.bottomRight,
            height: height * 0.12,
            child: IconButton(
              icon: Icon(Icons.close_rounded, color: kNeonBlue, size: 26,),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ),
          SizedBox(
            height: height * 0.71,
            child: ListView(
              children: [
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.1),
            child: Text(kInstructionShowProducts, style: kSBodyStyle),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: kLightPrimaryColor,
        child: Container(height: height * 0.03),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kDarkPink,
        onPressed: () {},
        child: Icon(Icons.list_alt_rounded, size: 30, color: kLightPrimaryColor,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
