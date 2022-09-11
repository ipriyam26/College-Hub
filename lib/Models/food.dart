class FoodStore {
  final String id;
  final String name;
  final String image;
  final bool status;
  final List<String> cuisine;

  FoodStore({
    required this.id,
    required this.name,
    required this.image,
    required this.status,
    required this.cuisine,
  });

  factory FoodStore.fromJson(Map<String, dynamic> json) {
    return FoodStore(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      status: json['status'],
      cuisine: json['cuisine'],
    );
  }
}

class FoodItems {
  final String id;
  final String name;
  final String image;
  final String description;
  final String price;
  final String type;

  FoodItems({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.price,
    required this.type,
  });

  factory FoodItems.fromJson(Map<String, dynamic> json) {
    return FoodItems(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      description: json['description'],
      price: json['price'],
      type: json['type'],
    );
  }
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'image': image,
        'description': description,
        'price': price,
        'type': type,
      };
}

class FoodOrder {
  // final String id ;
  final String enrollmentNo;
  final String storeId;
  final List<String> itemIds;
  final double price;
  final int cookTime;
  final bool orderStatus;
  final String postedAt;

  FoodOrder({
    required this.enrollmentNo,
    required this.storeId,
    required this.itemIds,
    required this.price,
    required this.cookTime,
    required this.orderStatus,
    required this.postedAt,
  });
  factory FoodOrder.fromJson(Map<String, dynamic> json) {
    return FoodOrder(
      enrollmentNo: json['enrollment_no'],
      storeId: json['store_id'],
      itemIds: json['item_id'],
      price: json['price'],
      cookTime: json['cook_time'],
      orderStatus: json['order_status'],
      postedAt: json['posted_at'],
    );
  }
  Map<String, dynamic> toJson() => {
        'enrollment_no': enrollmentNo,
        'store_id': storeId,
        'item_ids': itemIds,
        'price': price,
        'cook_time': cookTime,
        'order_status': orderStatus,
        'posted_at': postedAt,
      };
}

class FoodStatus {
  final String id;
  final String status;
  final String postedOn;

  FoodStatus({
    required this.id,
    required this.status,
    required this.postedOn,
  });

  factory FoodStatus.fromJson(Map<String, dynamic> json) {
    return FoodStatus(
      id: json['id'],
      status: json['status'],
      postedOn: json['posted_on'],
    );
  }
}
