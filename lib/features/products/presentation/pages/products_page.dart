import 'package:assignment/common/widgets/blue_button.dart';
import 'package:assignment/config/theme/app_color.dart';
import 'package:assignment/features/allevents/presentation/pages/events_page.dart';
import 'package:assignment/features/products/presentation/widgets/product_card.dart';
import 'package:assignment/features/products/presentation/widgets/sort_filter_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  final List<Map<String, String>> productData = const [
    {'name': 'Amazing Shoes', 'price': '€ 12.00'},
    {'name': 'Faboulous Shoes ', 'price': '€ 15.00'},
    {'name': 'Fantastic Shoes', 'price': '€ 15.00'},
    {'name': 'Spectacular Shoes', 'price': '€ 12.00'},
    {'name': 'Stunning Shoes', 'price': '€ 12.00'},
    {'name': 'Wonderful Shoes', 'price': '€ 15.00'},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SearchBar(
                leading: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: FaIcon(FontAwesomeIcons.magnifyingGlass),
                ),
                hintText: 'Shoes',

                hintStyle: WidgetStatePropertyAll<TextStyle>(
                  TextStyle(color: AppColor.textColor),
                ),
                elevation: WidgetStatePropertyAll<double>(0.0),
                backgroundColor: WidgetStatePropertyAll(AppColor.blueGrey),
              ),

              const SizedBox(height: 10),
              BlueButton(
                title: 'Next Page',
                width: 200,
                height: 30,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  EventsPage(),
                    ),
                  );
                },
              ),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  const SortButton(),
                  const SizedBox(width: 12),
                  const FilterButton(),
                ],
              ),

              const SizedBox(height: 20),

              Expanded(
                child: GridView.builder(
                  itemCount: productData.length,

                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
                    childAspectRatio: 0.85,
                  ),

                  itemBuilder: (context, index) {
                    final product = productData[index];

                    return ProductCard(
                      productName: product['name']!,
                      productPrice: product['price']!,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
