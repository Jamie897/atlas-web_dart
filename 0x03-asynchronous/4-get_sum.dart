import 'dart:convert';
import 'dart:async';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // Step 1: Fetch user data
    String? userData = await fetchUserData();
    if (userData == null) {
      throw 'User data is null';
    }
    Map<String, dynamic> userJson = jsonDecode(userData);
    String userId = userJson['id'];

    // Step 2: Fetch user orders
    List<String> userOrders = await fetchUserOrders(userId);
    if (userOrders.isEmpty) {
      throw 'User orders not found or empty';
    }

    // Step 3: Calculate total price of items
    double totalPrice = 0;
    for (String order in userOrders) {
      double productPrice = await fetchProductPrice(order);
      if (productPrice == -1) {
        throw 'Product price not found for order: $order';
      }
      totalPrice += productPrice;
    }

    return totalPrice;
  } catch (e) {
    print('error caught: $e');
    return -1;
  }
}

void main() async {
  double total = await calculateTotal();
  print(total.toStringAsFixed(1)); // Adjusted to match the expected output format
}
