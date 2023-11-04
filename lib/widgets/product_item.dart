import 'package:flutter/material.dart';
import 'package:flutter_practice/screens/add_new_product_screen.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return productActionDialog(context);
            });
      },
      leading: Image.network(
        'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        width: 90,
      ),
      title: const Text('Product Name'),
      subtitle: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Product Code'),
              SizedBox(
                width: 24,
              ),
              Text('Total Price'),
            ],
          ),
          Text('Product Description'),
        ],
      ),
      trailing: const Text('\$120'),
    );
  }

  AlertDialog productActionDialog(BuildContext context) {
    return AlertDialog(
      title: const Text('Select Action'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(Icons.edit),
            title: const Text('Edit'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AddNewProductScreen()),
              );
            },
          ),
          const Divider(
            height: 0,
          ),
          ListTile(
            leading: const Icon(Icons.delete),
            title: const Text('Delete'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
