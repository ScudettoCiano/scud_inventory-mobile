import 'package:flutter/material.dart';
import 'package:scud_inventory/screens/form.dart';
import 'package:scud_inventory/screens/show_items.dart';
import 'package:scud_inventory/widgets/drawer.dart';


class ShopItem {
  final String name;
  final IconData icon;

  ShopItem(this.name, this.icon);
}

class Item {
  String name;
  int amount;
  int price;
  String description;

  Item(this.name, this.amount, this.price, this.description);
}

class ShopCard extends StatelessWidget {
  final ShopItem item;

  const ShopCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    Color buttonColor;

    // Tentukan warna sesuai dengan nama item
    switch (item.name) {
      case "Lihat Item":
        buttonColor = Colors.red; // Warna merah untuk "Lihat Item"
        break;
      case "Tambah Item":
        buttonColor = Colors.blue; // Warna biru untuk "Tambah Item"
        break;
      case "Logout":
        buttonColor = Colors.green; // Warna hijau untuk "Logout"
        break;
      default:
        buttonColor = Color.fromARGB(255, 140, 141, 143);
    }

    return Material(
      color: buttonColor,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
          if (item.name == "Tambah Item") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ShopFormPage(),
              ),
            );
          }
          if (item.name == "Lihat Item") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ShowItemsPage(),
              ),
            );
          }
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: const Color(0xFF35155D),
                  size: 40.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xFF35155D)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final List<ShopItem> items = [
    ShopItem("Lihat Item", Icons.checklist),
    ShopItem("Tambah Item", Icons.add_shopping_cart),
    ShopItem("Logout", Icons.logout),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Scud Inventory',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 68, 206, 160),
      ),
      endDrawer: const RightDrawer(),
      body: SingleChildScrollView(
        // Widget wrapper yang dapat discroll
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Set padding dari halaman
          child: Column(
            // Widget untuk menampilkan children secara vertikal
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                child: Text(
                  'Halo', // Text yang menandakan toko
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 37, 21, 93)
                  ),
                ),
              ),
              // Grid layout
              GridView.count(
                // Container pada card kita.
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((ShopItem item) {
                  // Iterasi untuk setiap item
                  return ShopCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}