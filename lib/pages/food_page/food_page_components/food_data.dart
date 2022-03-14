import '../../../models/food/item.dart';

List<Item> foodItem() {
  return <Item>[
    Item(
        id: '123123123',
        name: 'Spl. Biryani',
        orderQty: 0,
        availableQty: 10,
        amount: '100',
        category: 'Lunch',
        imageUrl:
            'https://www.licious.in/blog/wp-content/uploads/2020/12/Hyderabadi-chicken-Biryani.jpg'),
    Item(
        id: '233232323',
        name: 'Coke',
        orderQty: 0,
        availableQty: 6,
        amount: '10',
        category: 'Snacks',
        imageUrl:
            'https://imageio.forbes.com/specials-images/imageserve/1189255149/An-American-multinational-corporation-and-manufacturer-of---/960x0.jpg?fit=bounds&format=jpg&width=960'),
    Item(
        id: '233232323',
        name: 'Chocolates',
        orderQty: 0,
        availableQty: 5,
        amount: '20',
        category: 'Snacks',
        imageUrl:
            'https://i2.wp.com/karissasvegankitchen.com/wp-content/uploads/2019/03/c-vegan-chocolate-bars-4-500x500.jpg'),
  ];
}
