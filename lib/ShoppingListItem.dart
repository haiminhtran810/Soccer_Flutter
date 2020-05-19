import 'package:flutter/material.dart';
import 'package:soccerflutter/Product.dart';

typedef void CartChangedCallback(Product product, bool isCart);

class ShoppingListItem extends StatelessWidget {
  ShoppingListItem({this.product, this.isCart, this.onCartChanged});

  final Product product;
  final bool isCart;
  final CartChangedCallback onCartChanged;

  Color _getColor(BuildContext context) {
    return this.isCart ? Colors.black : Theme.of(context).primaryColor;
  }

  TextStyle _getTextStyle(BuildContext context) {
    if (!this.isCart) return null;
    return TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onCartChanged(this.product, this.isCart);
      },
      leading: CircleAvatar(
        backgroundColor: _getColor(context),
        child: Text(
          this.product.name,
          style: _getTextStyle(context),
        ),
      ),
    );
    throw UnimplementedError();
  }
}
