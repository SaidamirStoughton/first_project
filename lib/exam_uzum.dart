// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class UzumMarket extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   final List<Map<String, String>> categories = [
//     {"title": "Доставка еды", "icon": "🍔"},
//     {"title": "Модная распродажа", "icon": "🛍️"},
//     {"title": "Гарантия низких цен", "icon": "✅"},
//     {"title": "Ярмарка техники", "icon": "🖥️"},
//     {"title": "Модный Базар", "icon": "👗"},
//     {"title": "Карта Uzum", "icon": "💳"},
//     {"title": "Uzum Avto", "icon": "🚗"},
//     {"title": "Рассрочка", "icon": "💸"},
//     {"title": "Здоровье и спорт", "icon": "⚽"},
//     {"title": "Продукты", "icon": "🍎"},
//   ];

//   final List<Map<String, String>> products = [
//     {
//       "title": "Samsung Galaxy A56",
//       "image": "assets/images/a56.webp",
//     },
//     {
//       "title": "Масло подсолнечное",
//       "image": "assets/images/maslo.webp",
//     },
//     {
//       "title": "Кроссовки",
//       "image": "assets/images/kross.jpg",
//     },
//     {
//       "title": "Стиральная машина",
//       "image": "assets/images/mashina.webp",
//     },
//     {
//       "title": "Макароны",
//       "image": "assets/images/makaron.jpg",
//     },
//   ];

//   final List<Map<String, String>> products2 = [
//     {
//       "title": "Шорты",
//       "image": "assets/images/шорты.jpg",
//     },
//     {
//       "title": "Носки",
//       "image": "assets/images/noski.jpg",
//     },
//     {
//       "title": "Шуба",
//       "image": "assets/images/шуба.jpg",
//     },
//     {
//       "title": "Перчатки",
//       "image": "assets/images/perch.jpg",
//     },
//     {
//       "title": "Шарф зимний",
//       "image": "assets/images/sharf.jpg",
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         actions: [IconButton(onPressed: () {}, icon: Icon(Icons.favorite))],
//         title: Container(
//           decoration: BoxDecoration(
//             color: Colors.black12,
//             borderRadius: BorderRadius.circular(16),
//           ),
//           child: TextField(
//             decoration: InputDecoration(
//               prefixIcon:
//                   IconButton(onPressed: () {}, icon: Icon(Icons.search)),
//               hintText: 'Искать товары и категории',
//               border: InputBorder.none,
//             ),
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//               margin: EdgeInsets.all(16),
//               height: 60,
//               decoration: BoxDecoration(
//                 color: Colors.black12,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: const Row(
//                 children: [
//                   CircleAvatar(backgroundImage: NetworkImage("data:image/png;base64,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")),
//                   SizedBox(width: 10),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text("25 млн сум на покупку новой мебели",
//                           style: TextStyle(fontSize: 16)),
//                       Text("можно получить прямо сейчас",
//                           style: TextStyle(fontSize: 12)),
//                     ],
//                   ),
//                   Spacer(),
//                   Icon(CupertinoIcons.arrow_right),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 180,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 padding: EdgeInsets.symmetric(horizontal: 16),
//                 itemCount: 3,
//                 itemBuilder: (context, index) {
//                   String imageUrl;

//                   if (index == 0) {
//                     imageUrl =
//                         "https://tse3.mm.bing.net/th?id=OIP.gPE2ScrsIXlEPWtfolMnOAHaE8&w=316&h=316&c=7";
//                   } else if (index == 1) {
//                     imageUrl =
//                         "https://habrastorage.org/getpro/habr/upload_files/fe9/f77/5db/fe9f775dbd1d27bf7c2d1a92835e6a08.png";
//                   } else {
//                     imageUrl =
//                         "https://tse1.mm.bing.net/th?id=OIP.qYb1z_gHiFxIDfBTOszhbAHaE8&w=316&h=316&c=7";
//                   }

//                   return Container(
//                     width: 320,
//                     margin: EdgeInsets.only(right: 16),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(16),
//                       image: DecorationImage(
//                         image: NetworkImage(imageUrl),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             SizedBox(height: 10),
//             Padding(
//               padding: EdgeInsets.only(left: 12, top: 10),
//               child: SizedBox(
//                 height: 110,
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: categories.length,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 6),
//                       child: Column(
//                         children: [
//                           Container(
//                             width: 60,
//                             height: 60,
//                             decoration: BoxDecoration(
//                               color: Colors.grey[300],
//                               borderRadius: BorderRadius.circular(16),
//                             ),
//                             alignment: Alignment.center,
//                             child: Text(
//                               categories[index]["icon"]!,
//                               style: TextStyle(fontSize: 28),
//                             ),
//                           ),
//                           SizedBox(height: 6),
//                           SizedBox(
//                             width: 70,
//                             child: Text(
//                               categories[index]["title"]!,
//                               textAlign: TextAlign.center,
//                               style: TextStyle(fontSize: 12),
//                               maxLines: 2,
//                             ),
//                           ),
//                         ],
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text("Всё, что нужно",
//                       style:
//                           TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                   Row(
//                     children: [
//                       Text("Все",
//                           style: TextStyle(
//                               fontSize: 14, color: Colors.deepPurple)),
//                       Icon(Icons.chevron_right, color: Colors.deepPurple),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               child: SizedBox(
//                 height: 220,
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: products.length,
//                   itemBuilder: (context, index) {
//                     return InkWell(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (_) => ProductDetailPage(
//                               title: products[index]["title"]!,
//                               image: products[index]["image"]!,
//                             ),
//                           ),
//                         );
//                       },
//                       child: Container(
//                         width: 140,
//                         margin: EdgeInsets.only(right: 12),
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(12),
//                           border: Border.all(color: Colors.grey[300]!),
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             ClipRRect(
//                               borderRadius: BorderRadius.vertical(
//                                   top: Radius.circular(12)),
//                               child: Image.asset(
//                                 products[index]["image"]!,
//                                 height: 120,
//                                 width: double.infinity,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Text(
//                                 products[index]["title"]!,
//                                 maxLines: 2,
//                                 overflow: TextOverflow.ellipsis,
//                                 style: TextStyle(fontSize: 14),
//                               ),
//                             ),
//                             Spacer(),
//                             Padding(
//                               padding: const EdgeInsets.symmetric(
//                                   horizontal: 8.0, vertical: 4),
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text("от 999 000 сум",
//                                       style: TextStyle(
//                                           fontSize: 12, color: Colors.green)),
//                                   Icon(Icons.favorite_border, size: 16),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               child: SizedBox(
//                 height: 220,
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: products2.length,
//                   itemBuilder: (context, index) {
//                     return InkWell(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (_) => ProductDetailPage(
//                               title: products2[index]["title"]!,
//                               image: products2[index]["image"]!,
//                             ),
//                           ),
//                         );
//                       },
//                       child: Container(
//                         width: 140,
//                         margin: EdgeInsets.only(right: 12),
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(12),
//                           border: Border.all(color: Colors.grey[300]!),
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             ClipRRect(
//                               borderRadius: BorderRadius.vertical(
//                                   top: Radius.circular(12)),
//                               child: Image.asset(
//                                 products2[index]["image"]!,
//                                 height: 120,
//                                 width: double.infinity,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Text(
//                                 products2[index]["title"]!,
//                                 maxLines: 2,
//                                 overflow: TextOverflow.ellipsis,
//                                 style: TextStyle(fontSize: 14),
//                               ),
//                             ),
//                             Spacer(),
//                             Padding(
//                               padding: const EdgeInsets.symmetric(
//                                   horizontal: 8.0, vertical: 4),
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text("от 999 000 сум",
//                                       style: TextStyle(
//                                           fontSize: 12, color: Colors.green)),
//                                   Icon(Icons.favorite_border, size: 16),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: 0,
//         selectedItemColor: Colors.deepPurple,
//         unselectedItemColor: Colors.grey,
//         type: BottomNavigationBarType.fixed,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Главная'),
//           BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Каталог'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.shopping_cart), label: 'Корзина'),
//           BottomNavigationBarItem(icon: Icon(Icons.flash_on), label: 'Tezkor'),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Профиль'),
//         ],
//       ),
//     );
//   }
// }

// class ProductDetailPage extends StatelessWidget {
//   final String title;
//   final String image;

//   const ProductDetailPage({required this.title, required this.image});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(title)),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image.asset(image, height: 200),
//             SizedBox(height: 16),
//             Text(title,
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
//             SizedBox(height: 12),
//             Text("Товар Входящий в состав магазина uzum market",
//                 style: TextStyle(fontSize: 16)),
//             SizedBox(height: 12),
//             Text("Цена: 999 000 сум",
//                 style: TextStyle(fontSize: 18, color: Colors.green)),
//             Spacer(),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 child: Text("Добавить в корзину"),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }