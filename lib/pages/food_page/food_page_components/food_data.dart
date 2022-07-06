import '../../../models/food/item.dart';

List<Item> foodItem() {
  return <Item>[
    Item(
        itemId: '123123123',
        name: 'Spl. Biryani',
        orderQty: 0,
        availableQty: 10,
        amount: '100',
        category: 'Lunch',
        imageUrl:
            'https://www.licious.in/blog/wp-content/uploads/2020/12/Hyderabadi-chicken-Biryani.jpg'),
    Item(
        itemId: '123122343',
        name: 'Chicken Biryani',
        orderQty: 0,
        availableQty: 10,
        amount: '300',
        category: 'Lunch',
        imageUrl:
            'https://www.licious.in/blog/wp-content/uploads/2020/12/Hyderabadi-chicken-Biryani.jpg'),
    Item(
        itemId: '233232323',
        name: 'Coke',
        orderQty: 0,
        availableQty: 6,
        amount: '10',
        category: 'Snacks',
        imageUrl:
            'https://imageio.forbes.com/specials-images/imageserve/1189255149/An-American-multinational-corporation-and-manufacturer-of---/960x0.jpg?fit=bounds&format=jpg&width=960'),
    Item(
        itemId: '233232323',
        name: 'Chocolates',
        orderQty: 0,
        availableQty: 5,
        amount: '20',
        category: 'Chocolates',
        imageUrl:
            'https://i2.wp.com/karissasvegankitchen.com/wp-content/uploads/2019/03/c-vegan-chocolate-bars-4-500x500.jpg'),
    Item(
        itemId: '232342563',
        name: 'Burger',
        orderQty: 0,
        availableQty: 15,
        amount: '20',
        category: 'WesternSnacks',
        imageUrl:
            'https://www.thesun.co.uk/wp-content/uploads/2016/07/nintchdbpict000252478792.jpg'),
    Item(
        itemId: 'badam_30',
        name: 'Badam',
        orderQty: 0,
        availableQty: 45,
        amount: '30',
        category: 'beverages',
        imageUrl:
            'https://4.imimg.com/data4/OV/RR/GLADMIN-11740016/kjkj-500x500.jpg'),
  ];
}
