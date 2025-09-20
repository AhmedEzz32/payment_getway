class OrderItemModel {
  final String name;
  final int quantity;
  final String price;
  final String currency;

  OrderItemModel({
    required this.name,
    required this.quantity,
    required this.price,
    required this.currency,
  });

  factory OrderItemModel.fromJson(Map<String, dynamic> json) {
    return OrderItemModel(
      name: json['name'],
      quantity: json['quantity'],
      price: json['price'],
      currency: json['currency'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'quantity': quantity,
        'price': price,
        'currency': currency,
      };
}

class ItemListModel {
  final List<OrderItemModel> orders;

  ItemListModel({required this.orders});

  factory ItemListModel.fromJson(Map<String, dynamic> json) {
    var itemsJson = json['items'] as List;
    List<OrderItemModel> itemsList = itemsJson.map((i) => OrderItemModel.fromJson(i)).toList();
    return ItemListModel(orders: itemsList);
  }

  Map<String, dynamic> toJson() => {
    'items': orders.map((item) => item.toJson()).toList(),
  };
}