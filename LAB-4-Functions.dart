class Pencil{
  String name;
  double price;
  int quantity;

  Pencil(this.name, this.price, this.quantity);

  double TotalPrice() {
    return price * quantity;
  }
}

void main() {

  Pencil pencil = Pencil("Dot", 0.5, 10);
  double totalCost = pencil.TotalPrice();
  print("Total Cost: \$${totalCost.toStringAsFixed(2)}");
}