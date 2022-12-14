import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import '../widgets/big_text.dart';
import '../widgets/small_text.dart';
import 'product_page_body.dart';

class MainProductPage extends StatefulWidget {
  const MainProductPage({Key? key}) : super(key: key);

  @override
  State<MainProductPage> createState() => _MainProductPageState();
}

class _MainProductPageState extends State<MainProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 45, bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "Bangladesh", color: AppColors.mainColor),
                      Row(
                        children: [
                          SmallText(
                            text: "Dhaka",
                            color: Colors.black54,
                          ),
                          //Icon(Icons.arrow_drop_down_rounded),
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 45,
                      height: 40,
                      child: Icon(Icons.search, color:Colors.white),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.green),
                      
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: ProductPageBody(),
          ))
        ],
      ),
    );
  }
}
