import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Gula Pasir',
        price: 6000,
        image: 'assets/gula.jpg',
        stok: 20,
        rating: 3),
    Item(
        name: 'Garam Dapur',
        price: 7500,
        image: 'assets/garam.png',
        stok: 7,
        rating: 2),
    
  ];

  HomePage({super.key});

  Widget BuildGridItem(BuildContext context, int index) {
    final item = items[index];
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/item', arguments: item); 
      },
      child: Card(
        elevation: 2, 
        margin: EdgeInsets.all(8),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Hero(
                    tag: item.image.toString(),
                    child: Image.asset(
                      item.image.toString(),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                item.name.toString(),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: <Widget>[
                  for (int i = 0; i < 5; i++)
                    (i < item.rating)
                        ? Icon(
                            Icons.star,
                            size: 18,
                            color: Colors.amber,
                          )
                        : Icon(
                            Icons.star,
                            size: 18,
                            color: Colors.black,
                          ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Rp. ' + item.price.toString(),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoping List'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              
            },
          ),
        ],
      ),
      body: Container(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return BuildGridItem(context, index);
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey,
        height: 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Dhoriffito Diansyah Putra",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "2141720201",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
