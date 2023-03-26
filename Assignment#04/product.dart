//Create a list of maps, where each map represents a product with a name, price, and quantity. Sort the list by the total cost of each product (price x quantity) in descending order.

void main() {
  List<Map<String, dynamic>> productList = [
    {"Name": "Cooking Oil", "Price": 3000, "Quantity": 2},
    {"Name": "Shampoo", "Price": 350, "Quantity": 2},
    {"Name": "Chocolate", "Price": 200, "Quantity": 5},
    {"Name": "Butter", "Price": 500, "Quantity": 1},
    {"Name": "Milk", "Price": 240, "Quantity": 6},
    {"Name": "Bread", "Price": 110, "Quantity": 2},
    {"Name": "Chips", "Price": 40, "Quantity": 4}
  ];

  productList.sort((a, b) =>
      (b["Price"] * b["Quantity"]).compareTo(a["Price"] * a["Quantity"]));
  for (Map<String, dynamic> product in productList) {
    int total = product["Price"] * product["Quantity"];
    print("=====================");
    print(" Name: ${product["Name"]}");
    print(" Price: ${product["Price"]}");
    print(" Quantity: ${product["Quantity"]}");
    print(" Total: $total");
  }
}
