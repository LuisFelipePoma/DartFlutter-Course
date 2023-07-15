import 'package:flutter/material.dart';
import 'package:productos_app/models/models.dart';
import 'package:productos_app/screens/screens.dart';
import 'package:productos_app/services/services.dart';
import 'package:productos_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsService = Provider.of<ProductsService>(context);
    final products = productsService.products;
    if (productsService.isLoading) return const LoadingScreen();
    Future<void> onRefresh() async {
      await Future.delayed(const Duration(seconds: 2));
      await productsService.refresh();
      print(productsService.products[0].name);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: products.length,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                productsService.selectedProduct =
                    productsService.products[index].copy();
                Navigator.pushNamed(context, 'products',
                    arguments: products[index]);
              },
              child: ProductCard(product: products[index])),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          productsService.selectedProduct =
              Product(available: true, name: '', price: 0);
          Navigator.pushNamed(context, 'products');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
