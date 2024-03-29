import 'package:ecommerce/AppUtils/global.colors.dart';
import 'package:ecommerce/Widgets/Categories.dart';
import 'package:ecommerce/Widgets/Search_Bar.dart';
import 'package:ecommerce/Widgets/ProductsCard.dart';
import 'package:flutter/material.dart';
import '../Widgets/BottomNavBar.dart';
import '../Widgets/Brand.dart';
import '../Widgets/horizontal.scrollable.buttons.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
final TextEditingController _searchController = TextEditingController();
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.only(left: 16,right: 16,bottom: 12,top: 12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                    "Store",
                    style: TextStyle(
                      color: GlobalColors.primaryColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                     ),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.shopping_cart_rounded,color: Colors.white,size: 30,),
                        const Icon(Icons.notifications,color: Colors.white,size: 30,),
                        const SizedBox(width: 10,),
                        InkWell(
                          onTap: (){
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(builder: (context) => Profile()),
                            // );
                          },
                          child: const CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('Images/profilepicture.png'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Search_Bar(searchController: _searchController),

                const SizedBox(height: 15,),
                Container(
                  height: 120,
                  width: 600,
                  decoration: BoxDecoration(
                    color: GlobalColors.primaryColor,
                    borderRadius: BorderRadius.circular(10)
                  ),

                ),
                const SizedBox(height: 20,),
                const Headings(title: "Categories"),
                const SizedBox(height: 10,),
                const Categories(),

                const SizedBox(height: 10,),
                const Headings(title: "Mega Deal"),
                const SizedBox(height: 10,),
                const HorizontalButtonsList(),

                const SizedBox(height: 10,),
                const Headings(title: "Brands"),
                const SizedBox(height: 10,),
                const Brand(),

                const Headings(title: "Top Products"),
                // SizedBox(
                //   //height: 400,
                //     child: ProductsCard()),
                const ProductsCard()
              ],

            )
          ),

        ),
      ),
     bottomNavigationBar: const BottomNavBar(),
    );
  }
}

class Headings extends StatelessWidget {
  const Headings({Key? key, required this.title}) : super(key: key);
 final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.bold
          ),
        ),
        Text(
          "View all >",
          style: TextStyle(
            color: GlobalColors.primaryColor,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}


