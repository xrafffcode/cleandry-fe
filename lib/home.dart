import 'package:cleandry_fe/credit_card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 40,
          ),
          Container(
              padding: const EdgeInsets.all(0),
              child: const ListTile(
                leading: Image(
                  image: AssetImage('assets/images/cleandry.png'),
                  height: 80,
                ),
                title: Text(
                  'Rafli Ramadhani',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Selamat datang!',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          const CreditCard(),
          // list kategori
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Kategori',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Lihat Semua',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 100,
                  margin: const EdgeInsets.only(left: 20),
                  child: Center(
                      child: Column(children: const [
                    SizedBox(height: 20),
                    Icon(Icons.payments, size: 40, color: Colors.blue),
                    SizedBox(height: 10),
                    Text(
                      'List harga',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                    ),
                  ])),
                ),
                Container(
                  width: 100,
                  margin: const EdgeInsets.only(left: 20),
                  child: Center(
                      child: Column(children: const [
                    SizedBox(height: 20),
                    Icon(Icons.download_done_sharp,
                        size: 40, color: Colors.blue),
                    SizedBox(height: 10),
                    Text(
                      'Selesai Order',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                    ),
                  ])),
                ),
                Container(
                  width: 100,
                  margin: const EdgeInsets.only(left: 20),
                  child: Center(
                      child: Column(children: const [
                    SizedBox(height: 20),
                    Icon(Icons.comment, size: 40, color: Colors.blue),
                    SizedBox(height: 10),
                    Text(
                      'Komplain',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                    ),
                  ])),
                ),
                Container(
                  width: 100,
                  margin: const EdgeInsets.only(left: 20),
                  child: Center(
                      child: Column(children: const [
                    SizedBox(height: 20),
                    Icon(Icons.people, size: 40, color: Colors.blue),
                    SizedBox(height: 10),
                    Text(
                      'Tentang Kami',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                    ),
                  ])),
                ),
              ],
            ),
          ),
          // artikel terkini
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Artikel Terkini',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Lihat Semua',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // make card articel with width full
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      Image.asset('assets/images/a1.jpg'),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Paydry - Digital payment alternatif pembayaran pada aplikasi cleandry',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      Image.asset('assets/images/a1.jpg'),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Paydry - Digital payment alternatif pembayaran pada aplikasi cleandry',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      Image.asset('assets/images/a1.jpg'),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Paydry - Digital payment alternatif pembayaran pada aplikasi cleandry',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ]),
      ),

      //navbar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
