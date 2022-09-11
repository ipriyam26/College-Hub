import 'dart:convert';

import 'package:college_hub/Models/food.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class FoodController extends GetxController {
  Map<String, dynamic> placeHolder = {
    "stores": [
      {
        "id": "1",
        "name": "Burger King",
        "image": "https://i.ibb.co/7bBqQYz/burger-king.png",
        "status": true,
        "cuisine": ["Burger", "Fast Food", "Pizza"]
      },
      {
        "id": "2",
        "name": "Dominos",
        "image": "https://i.ibb.co/7bBqQYz/burger-king.png",
        "status": true,
        "cuisine": ["Burger", "Fast Food", "Pizza"]
      },
      {
        "id": "3",
        "name": "KFC",
        "image": "https://i.ibb.co/7bBqQYz/burger-king.png",
        "status": true,
        "cuisine": ["Burger", "Fast Food", "Pizza"]
      },
      {
        "id": "4",
        "name": "McDonalds",
        "image": "https://i.ibb.co/7bBqQYz/burger-king.png",
        "status": true,
        "cuisine": ["Burger", "Fast Food", "Pizza"]
      },
      {
        "id": "5",
        "name": "Pizza Hut",
        "image": "https://i.ibb.co/7bBqQYz/burger-king.png",
        "status": true,
        "cuisine": ["Burger", "Fast Food", "Pizza"]
      },
      {
        "id": "6",
        "name": "Subway",
        "image": "https://i.ibb.co/7bBqQYz/burger-king.png",
        "status": true,
        "cuisine": ["Burger", "Fast Food", "Pizza"]
      },
      {
        "id": "7",
        "name": "Wendys",
        "image": "https://i.ibb.co/7bBqQYz/burger-king.png",
        "status": true,
        "cuisine": ["Burger", "Fast Food", "Pizza"]
      }
    ]
  };
  
  final foodStores = [].obs;
  final foodItems = [].obs as List<FoodItems>;

  Future<void> getFoodStores() async {
    var response = await http
        .get(Uri.parse('https://college-hub.herokuapp.com/food/getStores'));

    try {
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        foodStores.value = data;
      } else {
        throw Exception('Failed to load food stores');
      }
    } on Exception catch (e) {
      List<FoodStore> temp = [];
      for (var i = 0; i < placeHolder['stores'].length; i++) {
        temp.add(FoodStore.fromJson(placeHolder['stores'][i]));
      }
      foodStores.value = temp;
    }
  }

  

  Future<void> getFoodItems(String storeId) async {
    // app.get("/food/items/:id", food.items.getItemById);

    var response =
        await http.get(Uri.parse('localhost:3000/food/items/$storeId'));

    try {
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        foodStores.value = data;
      } else {
        throw Exception('Failed to load food items');
      }
    } on Exception catch (e) {
      List<FoodStore> temp = [];
      for (var i = 0; i < placeHolder['stores'].length; i++) {
        temp.add(FoodStore.fromJson(placeHolder['stores'][i]));
      }
      foodStores.value = temp;
    }
  }

  void placeOrder(FoodOrder foodOrder) {}
}
