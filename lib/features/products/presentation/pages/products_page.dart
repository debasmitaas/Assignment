import 'package:assignment/common/widgets/blue_button.dart';
import 'package:assignment/config/theme/app_color.dart';
import 'package:assignment/features/products/presentation/widgets/product_card.dart';
import 'package:assignment/features/products/presentation/widgets/sort_filter_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  // 1. Define the List of Data as a List of Maps (or a List of Lists)
  // Using List<Map<String, String>> is very flexible and readable.
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
              // Search Bar
              const SearchBar(
                leading: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: FaIcon(FontAwesomeIcons.magnifyingGlass),
                ),
                hintText: 'Shoes',
                // Assuming AppColor.textColor exists in your theme config
                hintStyle: WidgetStatePropertyAll<TextStyle>(
                  TextStyle(color: AppColor.textColor), 
                ),
                elevation: WidgetStatePropertyAll<double>(0.0),
                backgroundColor: WidgetStatePropertyAll(AppColor.blueGrey),
              ),
              
              const SizedBox(height: 10),

              // Sort/Filter Buttons
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  const SortButton(),
                  const SizedBox(width: 12),
                  const FilterButton(),
                ],
              ),
              
              const SizedBox(height: 20),

              // Product Grid (Using Expanded is crucial here)
              Expanded(
                child: GridView.builder(
                  // 2. Use the length of the list for the count
                  itemCount: productData.length, 
                  
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
                    childAspectRatio: 0.85, 
                  ),
                  
                  itemBuilder: (context, index) {
                    // 3. Directly access the map data
                    final product = productData[index];
                    
                    // 4. Pass the map values to the ProductCard
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