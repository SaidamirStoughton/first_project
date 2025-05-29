// import 'package:flutter/material.dart';

// void main() => runApp(Clothing());

// class Clothing extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   final List<Map<String, String>> brands = [
//     {'name': 'Adidas', 'image': 'assets/images/adidas.png'},
//     {'name': 'Nike', 'image': 'assets/images/nike.png'},
//     {'name': 'Fila', 'image': 'assets/images/fila.png'},
//     {'name': 'Puma', 'image': 'assets/images/puma.png'},
//     {'name': 'Reebok', 'image': 'assets/images/reebok.png'},
//   ];

//   final List<Map<String, String>> products = [
//     {
//       'name': 'Nike Sportwear Club Fleece',
//       'price': '\$99',
//       'image': 'assets/images/mint_sweater_man.webp',
//     },
//     {
//       'name': 'Trail Running Jacket Nike Windrunner',
//       'price': '\$99',
//       'image': 'assets/images/yellow_blue_jacket.jpg',
//     },
//     {
//       'name': 'White Outfit Bald Model',
//       'price': '\$99',
//       'image': 'assets/images/bald_white_outfit.webp',
//     },
//     {
//       'name': 'Nike Blue Sweatshirt',
//       'price': '\$99',
//       'image': 'assets/images/blue_sweatshirt.webp',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: 50),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   CircleIcon(icon: Icons.menu),
//                   CircleIcon(icon: Icons.lock_outline),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   'Hello',
//                   style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   'Welcome to Laza.',
//                   style: TextStyle(color: Colors.grey),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: Container(
//                 height: 50,
//                 decoration: BoxDecoration(
//                   color: Colors.grey.shade100,
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: Row(
//                   children: [
//                     SizedBox(width: 15),
//                     Icon(Icons.search, color: Colors.grey),
//                     SizedBox(width: 10),
//                     Expanded(
//                       child: TextField(
//                         decoration: InputDecoration(
//                           hintText: 'Search...',
//                           border: InputBorder.none,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       height: 50,
//                       width: 50,
//                       decoration: BoxDecoration(
//                         color: Colors.purple,
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: Icon(Icons.mic, color: Colors.white),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text("Choose Brand",
//                       style:
//                           TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
//                   Text("View All",
//                       style: TextStyle(color: Colors.grey, fontSize: 14)),
//                 ],
//               ),
//             ),
//             SizedBox(height: 10),
//             SizedBox(
//               height: 50,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 padding: EdgeInsets.symmetric(horizontal: 20),
//                 children: brands
//                     .map((brand) => BrandCard(
//                           name: brand['name']!,
//                           image: brand['image']!,
//                         ))
//                     .toList(),
//               ),
//             ),
//             SizedBox(height: 20),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text("New Arrival",
//                       style:
//                           TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
//                   Text("View All",
//                       style: TextStyle(color: Colors.grey, fontSize: 14)),
//                 ],
//               ),
//             ),
//             SizedBox(height: 10),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: GridView.count(
//                 shrinkWrap: true,
//                 physics: NeverScrollableScrollPhysics(),
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 10,
//                 mainAxisSpacing: 20,
//                 childAspectRatio: 0.7,
//                 children: products.map((product) {
//                   return GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (_) => ProductPage(product: product),
//                         ),
//                       );
//                     },
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Colors.grey.shade100,
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       padding: EdgeInsets.all(10),
//                       child: Column(
//                         children: [
//                           Expanded(
//                             child: Image.asset(
//                               product['image']!,
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           SizedBox(height: 10),
//                           Text(
//                             product['name']!,
//                             style: TextStyle(fontSize: 12),
//                             maxLines: 2,
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                           SizedBox(height: 5),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(product['price']!,
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 14)),
//                               Icon(Icons.favorite_border),
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   );
//                 }).toList(),
//               ),
//             ),
//             SizedBox(height: 20),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         selectedItemColor: Colors.purple,
//         unselectedItemColor: Colors.grey,
//         currentIndex: 0,
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.favorite_border), label: "Wishlist"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.person_outline), label: "Profile"),
//         ],
//       ),
//     );
//   }
// }

// class ProductPage extends StatelessWidget {
//   final Map<String, String> product;
//   ProductPage({required this.product});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           SizedBox(height: 50),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 CircleIcon(
//                     icon: Icons.arrow_back_ios_new,
//                     onTap: () {
//                       Navigator.pop(context);
//                     }),
//                 CircleIcon(icon: Icons.lock_outline),
//               ],
//             ),
//           ),
//           SizedBox(height: 20),
//           Expanded(
//             child: Image.asset(
//               product['image']!,
//               fit: BoxFit.contain,
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     Text(
//                       product['name']!,
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                     Spacer(),
//                     Text(
//                       '\$120',
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 10),
//                 Row(
//                   children: ['S', 'M', 'L', 'XL', '2XL']
//                       .map((size) => Container(
//                             margin: EdgeInsets.only(right: 10),
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: 12, vertical: 8),
//                             decoration: BoxDecoration(
//                               border: Border.all(color: Colors.grey.shade300),
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             child: Text(size),
//                           ))
//                       .toList(),
//                 ),
//                 SizedBox(height: 20),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     "Description",
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   "The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a soft feel with performance feel with...",
//                   style: TextStyle(color: Colors.grey),
//                 ),
//                 SizedBox(height: 10),
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (_) => ReviewPage()),
//                     );
//                   },
//                   child: Row(
//                     children: [
//                       Text(
//                         "Reviews",
//                         style: TextStyle(
//                             fontSize: 16, fontWeight: FontWeight.bold),
//                       ),
//                       Spacer(),
//                       Icon(Icons.arrow_forward_ios, size: 16),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Container(
//                   width: double.infinity,
//                   height: 50,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (_) => CartPage(product: product),
//                         ),
//                       );
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.purple,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(15)),
//                     ),
//                     child: Text(
//                       "Add to Cart",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           SizedBox(height: 20),
//         ],
//       ),
//     );
//   }
// }

// class ReviewPage extends StatelessWidget {
//   final List<Map<String, String>> reviews = [
//     {
//       'name': 'Jenny Wilson',
//       'date': '13 Sep, 2020',
//       'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
//       'rating': '4.8',
//     },
//     {
//       'name': 'Ronald Richards',
//       'date': '13 Sep, 2020',
//       'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
//       'rating': '4.8',
//     },
//     {
//       'name': 'Guy Hawkins',
//       'date': '13 Sep, 2020',
//       'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
//       'rating': '4.8',
//     },
//     {
//       'name': 'Savannah Nguyen',
//       'date': '13 Sep, 2020',
//       'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing eli.',
//       'rating': '4.8',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: BackButton(color: Colors.black),
//         title: Text('Reviews', style: TextStyle(color: Colors.black)),
//         centerTitle: true,
//         backgroundColor: Colors.white,
//         elevation: 0,
//         actions: [
//           TextButton(
//             onPressed: () {},
//             child: Text('Add Review', style: TextStyle(color: Colors.purple)),
//           )
//         ],
//       ),
//       body: ListView(
//         padding: EdgeInsets.all(20),
//         children: reviews.map((review) {
//           return Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   CircleAvatar(
//                     backgroundColor: Colors.grey.shade300,
//                     child: Icon(Icons.person, color: Colors.white),
//                   ),
//                   SizedBox(width: 10),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(review['name']!,
//                           style: TextStyle(fontWeight: FontWeight.bold)),
//                       Text(review['date']!,
//                           style: TextStyle(color: Colors.grey, fontSize: 12)),
//                     ],
//                   ),
//                   Spacer(),
//                   Row(
//                     children: [
//                       Text(review['rating']!,
//                           style: TextStyle(fontWeight: FontWeight.bold)),
//                       SizedBox(width: 2),
//                       Icon(Icons.star, size: 16, color: Colors.orange),
//                     ],
//                   )
//                 ],
//               ),
//               SizedBox(height: 10),
//               Text(
//                 review['review']!,
//                 style: TextStyle(color: Colors.grey),
//               ),
//               SizedBox(height: 20),
//             ],
//           );
//         }).toList(),
//       ),
//     );
//   }
// }

// class CircleIcon extends StatelessWidget {
//   final IconData icon;
//   final VoidCallback? onTap;
//   CircleIcon({required this.icon, this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.grey.shade100,
//           shape: BoxShape.circle,
//         ),
//         padding: EdgeInsets.all(10),
//         child: Icon(icon, color: Colors.black),
//       ),
//     );
//   }
// }

// class BrandCard extends StatelessWidget {
//   final String name;
//   final String image;

//   BrandCard({required this.name, required this.image});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(right: 10),
//       padding: EdgeInsets.symmetric(horizontal: 12),
//       decoration: BoxDecoration(
//         color: Colors.grey.shade100,
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Row(
//         children: [
//           Image.asset(image, height: 24, width: 24),
//           SizedBox(width: 8),
//           Text(name, style: TextStyle(fontWeight: FontWeight.w500)),
//         ],
//       ),
//     );
//   }
// }
// //....................................................
// //....................................................

// class CartPage extends StatelessWidget {
//   final Map<String, String> product;
//   CartPage({required this.product});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         leading: BackButton(color: Colors.black),
//         title: Text("Cart", style: TextStyle(color: Colors.black)),
//         backgroundColor: Colors.white,
//         elevation: 0,
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Container(
//                   width: 80,
//                   height: 80,
//                   decoration: BoxDecoration(
//                     color: Colors.grey.shade100,
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Image.asset(product['image']!, fit: BoxFit.contain),
//                 ),
//                 SizedBox(width: 20),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(product['name']!,
//                           maxLines: 2,
//                           overflow: TextOverflow.ellipsis,
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, fontSize: 14)),
//                       SizedBox(height: 8),
//                       Text(product['price']!,
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16,
//                               color: Colors.purple)),
//                     ],
//                   ),
//                 ),
//                 Column(
//                   children: [
//                     Icon(Icons.add, size: 20),
//                     Text("1"),
//                     Icon(Icons.remove, size: 20),
//                   ],
//                 )
//               ],
//             ),
//             Spacer(),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text("Total",
//                     style:
//                         TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                 Text(product['price']!,
//                     style:
//                         TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//               ],
//             ),
//             SizedBox(
//               width: double.infinity,
//               height: 50,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.purple,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                 ),
//                 child: Text(
//                   "Checkout",
//                   style: TextStyle(color: Colors.white), // Белый цвет текста
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
