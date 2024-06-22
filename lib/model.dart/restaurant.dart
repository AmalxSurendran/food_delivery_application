import 'package:collection/collection.dart';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/model.dart/cart_item.dart';
import 'package:food_delivery_app/model.dart/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //burgers
    Food(
      name: 'Ahi Tuna Burger',
      description:
          'A modern twist on the classic burger, this patty features seared ahi tuna',
      imagePath: 'lib/images/burgers/Ahi_Tuna_Burger.jpeg',
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Tomato', price: 0.99),
        Addon(name: 'Pickles', price: 1.50),
        Addon(name: 'Ahi Tuna', price: 2.99),
      ],
    ),
    Food(
      name: 'Aussie Burger',
      description:
          'Originating in Australia, this burger typically includes a beef patty, bacon, cheese, fried egg, beetroot, lettuce, tomato, and onion. It’s a flavor-packed deligh',
      imagePath: 'lib/images/burgers/Aussie_Burger.jpeg',
      price: 0.98,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: ' fried egg', price: 0.99),
        Addon(name: 'lettuce', price: 1.50),
        Addon(name: 'Extra bacon', price: 2.99),
      ],
    ),
    Food(
      name: 'Avocado Burger',
      description:
          ' For those who adore creamy avocados, this burger combines a juicy beef patty with slices of ripe avocado and other fresh toppings.',
      imagePath: 'lib/images/burgers/Avocado_Burger.jpeg',
      price: 1.80,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Beef patty', price: 0.99),
        Addon(name: 'Pickles', price: 1.50),
        Addon(name: 'avocados', price: 2.99),
      ],
    ),
    Food(
      name: 'Bánh Mì Burger',
      description:
          'Inspired by Vietnamese cuisine, this fusion burger features a flavorful pork or chicken patty topped with pickled vegetables, cilantro, and spicy mayo.',
      imagePath: 'lib/images/burgers/Bánh_Mì_Burger.jpeg',
      price: 1.20,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'chicken patty', price: 1.99),
        Addon(name: 'Pickles', price: 1.50),
        Addon(name: 'pork', price: 2.99),
      ],
    ),
    Food(
      name: 'Beyond Burger',
      description:
          ' A plant-based alternative, the Beyond Burger is made from pea protein and promises a juicy, meat-like experience without using actual beef.',
      imagePath: 'lib/images/burgers/Beyond_Burger.jpeg',
      price: 1.02,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra onions', price: 0.99),
        Addon(name: 'tomato', price: 0.99),
        Addon(name: 'Pickles', price: 1.50),
        Addon(name: 'veg patty', price: 2.99),
      ],
    ),
    //salad
    Food(
      name: 'Avocado Tomato Salad',
      description:
          'A perfect summer salad combining creamy avocados and juicy tomatoes.',
      imagePath: 'lib/images/salads/Avocado_Tomato_Salad.jpeg',
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Tomato', price: 0.99),
        Addon(name: 'Pickles', price: 1.50),
        Addon(name: 'Avacado', price: 2.99),
      ],
    ),
    Food(
      name: 'Easy Pear and Walnut Salad',
      description:
          'A beautifully crunchy salad with rocket leaves, dried fruits, pear, and walnuts. Drizzle it with high-quality olive oil for extra flavor.',
      imagePath: 'lib/images/salads/Easy_Pear_and_Walnut_Salad.jpeg',
      price: 8.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'walnuts', price: 0.99),
        Addon(name: 'dried fruits', price: 0.99),
        Addon(name: 'rocket leaves', price: 1.50),
        Addon(name: 'pear', price: 2.99),
      ],
    ),
    Food(
      name: 'Healthy Egg Salad',
      description:
          'This protein-packed salad features quinoa, beets, and eggs – perfect for a filling and nutritious lunch.',
      imagePath: 'lib/images/salads/EggSalad.jpeg',
      price: 5.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Eggs', price: 0.99),
        Addon(name: 'dried fruits', price: 0.99),
        Addon(name: 'lettues', price: 1.50),
        Addon(name: 'pear', price: 2.99),
      ],
    ),
    Food(
      name: 'Healthy Fruit Salad',
      description:
          ' While not a green salad, a refreshing fruit salad with a mix of seasonal fruits is always a hit during warm weather.',
      imagePath: 'lib/images/salads/Fruit_Salad.jpeg',
      price: 6.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'mango', price: 0.99),
        Addon(name: 'Avacado', price: 0.99),
        Addon(name: 'Apple', price: 1.50),
        Addon(name: 'strawberry', price: 2.99),
      ],
    ),
    Food(
      name: 'Salad with Kale and Blueberries',
      description:
          ' A beautifully crunchy salad with rocket leaves, dried fruits, pear, and walnuts. Drizzle it with high-quality olive oil for extra flavor.',
      imagePath: 'lib/images/salads/Salad_with_Kale_and_Blueberries.jpeg',
      price: 6.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'walnuts', price: 0.99),
        Addon(name: 'dried fruits', price: 0.99),
        Addon(name: 'rocket leaves', price: 1.50),
        Addon(name: 'pear', price: 2.99),
      ],
    ),
    //sides
    Food(
      name: 'Brunede Kartofler',
      description:
          'brunede kartofler (lit. caramelized potatoes) is a simple yet immensely flavorful Danish dish. The potatoes are cooked, peeled, and then simmered in a mixture of sugar and butter until they are completely coated in the caramelized glaze',
      imagePath: 'lib/images/sides/Brunede_Kartofler.jpeg',
      price: 12.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'butter', price: 0.99),
        Addon(name: 'dried fruits', price: 0.99),
        Addon(name: 'potato', price: 1.50),
        Addon(name: 'pear', price: 2.99),
      ],
    ),
    Food(
      name: 'Crespelle alla Valdostana',
      description:
          'These rustic, crispy potato pancakes belong to traditional Slovak cuisine. They consist of a thick batter made with grated potatoes, eggs, flour, and a variety of spices',
      imagePath: 'lib/images/sides/Crespelle_alla_Valdostana.jpeg',
      price: 15.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'butter', price: 0.99),
        Addon(name: 'egg', price: 0.99),
        Addon(name: 'potato', price: 1.50),
        Addon(name: 'pear', price: 2.99),
      ],
    ),
    Food(
      name: 'French Fries',
      description:
          'French fries, also known as chips, fries, or pommes frites, are a beloved classic in the world of fast food and casual dining. These crispy and golden slices of potato are a staple side dish or snack in many cuisines around the globe.',
      imagePath: 'lib/images/sides/Frenchfries.jpeg',
      price: 5.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'mayo', price: 0.99),
        Addon(name: 'Tomato sauce', price: 0.99),
        Addon(name: 'potato paste', price: 1.50),
      ],
    ),
    Food(
      name: 'Käseknöde',
      description:
          'Käseknödel is a traditional dumpling enriched with cheese originating from Tyrol and South Tyrol. These cheese dumplings are typically served as a side dish, showcasing an inventive way of using leftover stale bread.',
      imagePath: 'lib/images/sides/Käseknöde.jpeg',
      price: 7.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Fontina butter', price: 0.99),
        Addon(name: 'egg', price: 0.99),
        Addon(name: 'potato', price: 1.50),
        Addon(name: 'ham', price: 2.99),
      ],
    ),
    Food(
      name: 'Zemiakové Placky',
      description:
          'Hailing from the Aosta Valley, crespelle alla Valdostana is an Italian specialty that consists of savory, stuffed crêpes smothered in gooey Fontina cheese and béchamel sauce.',
      imagePath: 'lib/images/sides/Zemiakové_Placky.jpeg',
      price: 3.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Fontina butter', price: 0.99),
        Addon(name: 'egg', price: 0.99),
        Addon(name: 'potato', price: 1.50),
        Addon(name: 'grilled meat', price: 2.99),
      ],
    ),
    //desserts
    Food(
      name: 'Bundt Cakes',
      description:
          'Cakes are beloved desserts, often served at birthdays and other celebrations. They can be made of sponge cake with various frostings, icings, or glazes.',
      imagePath: 'lib/images/desserts/bundt_cakes.jpeg',
      price: 1.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'chocalate', price: 0.99),
        Addon(name: 'vanila', price: 0.99),
        Addon(name: 'whipped cream', price: 1.50),
        Addon(name: 'cream fruits', price: 2.99),
      ],
    ),
    Food(
      name: 'Fruit Tart',
      description:
          'Tarts can be sweet or savory and are perfect for elegant desserts. Try a classic fruit tart with a buttery crust and a luscious fruit filling.',
      imagePath: 'lib/images/desserts/fruit_tart.jpeg',
      price: 2.59,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'chocalate', price: 0.99),
        Addon(name: 'vanila', price: 0.99),
        Addon(name: 'whipped cream', price: 1.50),
        Addon(name: 'cream fruits', price: 2.99),
      ],
    ),
    Food(
      name: 'sandwich cookies',
      description:
          'Cookies (also known as biscuits in the UK and Australia) come in countless shapes, sizes, and textures. Most are made from basic ingredients like eggs, butter, flour, and sweeteners.',
      imagePath: 'lib/images/desserts/sandwich_cookies.jpeg',
      price: 3.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'chocalate', price: 0.99),
        Addon(name: 'vanila', price: 0.99),
        Addon(name: 'whipped cream', price: 1.50),
        Addon(name: 'cream fruits', price: 2.99),
      ],
    ),
    Food(
      name: 'sugar cream pie',
      description:
          'Pies are baked goods made from pastry dough (to create a pie shell) and sweet fillings containing ingredients like fruits, sugar, sweetened veggies, or nuts. ',
      imagePath: 'lib/images/desserts/sugar_cream_pie.jpeg',
      price: 6.59,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'chocalate', price: 0.99),
        Addon(name: 'vanila', price: 0.99),
        Addon(name: 'whipped cream', price: 1.50),
        Addon(name: 'cream fruits', price: 2.99),
      ],
    ),
    //drinks
    Food(
      name: 'Smoothies',
      description:
          'Whether enjoyed as a refreshing breakfast option, a post-workout recovery drink, or a tasty afternoon pick-me-up, smoothies are a versatile and nutritious beverage that can be enjoyed by people of all ages and lifestyles ',
      imagePath: 'lib/images/drinks/Smoothies.jpg',
      price: 6.59,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'chocalate', price: 5.99),
        Addon(name: 'vanila', price: 7.99),
        Addon(name: 'Strawberry', price: 7.50),
        Addon(name: 'BlueBerry', price: 10.99),
      ],
    ),
    Food(
      name: 'Soft Drinks',
      description:
          'Soft drinks come in a wide variety of flavors, including cola, lemon-lime, orange, root beer, and many others. They are often enjoyed cold and served over ice, making them a popular choice for quenching thirst on hot days or accompanying meals.',
      imagePath: 'lib/images/drinks/Soft_Drinks.jpeg',
      price: 6.59,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'cock', price: 2.99),
        Addon(name: 'pepsi', price: 2.99),
        Addon(name: 'Lemon', price: 2.99),
        Addon(name: 'Sprite', price: 2.99),
      ],
    ),
    Food(
      name: 'Ice Tea',
      description:
          'Whether enjoyed on its own as a refreshing pick-me-up or paired with a meal as a thirst-quenching accompaniment, iced tea is a beloved beverage that appeals to tea lovers and non-tea drinkers alike',
      imagePath: 'lib/images/drinks/ice_tea.jpeg',
      price: 6.59,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'cock', price: 2.99),
        Addon(name: 'pepsi', price: 2.99),
        Addon(name: 'Lemon', price: 2.99),
        Addon(name: 'Sprite', price: 2.99),
      ],
    ),
  ];
  /*

 G E T T E R S

  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  /*

 O P E R A T I O N S

  */
  //user cart
  final List<CartItem> _cart = [];

  //add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    //see if there is a cart iten already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if the food items are same
      bool isSameFood = item.food == food;

      //check if the list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    //if item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }
    //otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //get total price
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  //get total number of items
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }
  /*

 H E L P E R S

  */

  //generate receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    //format the date to include up to seconds only
    String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(
      DateTime.now(),
    );
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln('____________________________________');
    receipt.writeln();

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)},");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("   Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln('____________________________________');
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()} ");
    receipt.writeln("Total Items: ${_formatPrice(getTotalPrice())} ");

    return receipt.toString();
  }

  //format double value into money
  String _formatPrice(double price) {
    return '\$ $price';
  }

  //format list of addons into a string
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(",");
  }
}
