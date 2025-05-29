// import 'package:flutter/material.dart';

// class CoffeeApp extends StatefulWidget {
//   const CoffeeApp({super.key});

//   @override
//   State<CoffeeApp> createState() => _CoffeeAppState();
// }

// class _CoffeeAppState extends State<CoffeeApp> {
//   int cartCount = 0;
//   int itemQuantity = 0;

//   void addToCart() {
//     setState(() {
//       cartCount++;
//       itemQuantity++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(
//         cartCount: cartCount,
//         onAddToCart: addToCart,
//         itemQuantity: itemQuantity,
//       ),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   final int cartCount;
//   final int itemQuantity;
//   final VoidCallback onAddToCart;

//   const HomePage({super.key, required this.cartCount, required this.onAddToCart, required this.itemQuantity});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xff201520),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16),
//         child: Column(
//           children: [
//             const SizedBox(height: 60),
//             _buildHeader(),
//             const SizedBox(height: 20),
//             _buildSearch(),
//             const SizedBox(height: 20),
//             Expanded(child: _buildCoffeeGrid(context)),
//           ],
//         ),
//       ),
//       bottomNavigationBar: _buildBottomNav(context),
//     );
//   }

//   Widget _buildHeader() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: const [
//             Text(
//               'déjà',
//               style: TextStyle(
//                 fontSize: 36,
//                 color: Color(0xffEFE3C880),
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//             Text(
//               ' Brew',
//               style: TextStyle(
//                 fontSize: 48,
//                 color: Color(0xffEFE3C8),
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ],
//         ),
//         const CircleAvatar(
//           radius: 20,
//           backgroundColor: Color(0xffEFE3C8),
//           backgroundImage: NetworkImage(
//             'https://s3-alpha-sig.figma.com/img/de5d/1299/c156a9d86bbfb03aa5251cd5af3614c4?Expires=1745798400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=t4vEIc7Mj1M8mC4eJfALwzSdHtj-M-StjZIUsGzMvhA2OaEguwDsqYR6VfJ8~SYOXsCN1wfS3IxTbaNw4c~ynDlusw8nuyFUeu0e8rgEUwKmFr37OI5QWiYnF0qbpry0rTL~2Zt1~xLGDoicT4oboBx-WFIGYF8ggDZ7-VdS8pttdVAHWDMSH9t7JFSAAH81jtRtJTFmz91ponWmLQLLFqwRAI-iYHw5mscvFd0oQoRIaAJTCxnvNxgjBeDlY8xCRVOadYo4FfbR0~4QFEwwiAb~4g3xXgn1a64NxVWCmC5gSzvC-6XylTwPLV7-IDE3BLgxBi7zOu77jftFmmh7Eg__',
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildSearch() {
//     return SizedBox(
//       height: 40,
//       child: TextField(
//         decoration: InputDecoration(
//           filled: true,
//           fillColor: const Color(0xff171017),
//           hintText: 'Browse your favourite coffee...',
//           hintStyle: const TextStyle(color: Color(0xffEFE3C880)),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(20),
//             borderSide: BorderSide.none,
//           ),
//           prefixIcon: const Icon(
//             Icons.search,
//             color: Color(0xffEFE3C880),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildCoffeeGrid(BuildContext context) {
//     return GridView.builder(
//       itemCount: 4,
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         childAspectRatio: 0.7,
//         crossAxisSpacing: 12,
//         mainAxisSpacing: 16,
//       ),
//       itemBuilder: (context, index) {
//         return GestureDetector(
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (_) => CoffeeDetailPage(onBuyNow: onAddToCart, quantity: itemQuantity),
//               ),
//             );
//           },
//           child: Container(
//             decoration: BoxDecoration(
//               color: const Color(0xff171017),
//               borderRadius: BorderRadius.circular(20),
//             ),
//             padding: const EdgeInsets.all(12),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: const [
//                 Expanded(
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.all(Radius.circular(16)),
//                     child: Image(
//                       image: NetworkImage('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTEhMWFhUWGBgWGBgYFhoYFxgYGBgXFxUXGhgYHSggGBolHRUWITEhJSkrLi4uGB8zODMtNygtLisBCgoKDg0OGxAQGy0lHyUtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIALcBEwMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAEAAIDBQYBBwj/xABDEAABAwIEAwUGAwYFAQkAAAABAAIRAyEEEjFBBVFhInGBkaEGEzKxwfAUQtEHI1JikuEzcoKy8cIVFkNjc6LS0+L/xAAaAQACAwEBAAAAAAAAAAAAAAAAAQIDBAUG/8QAKxEAAgIBBQAABQMFAQAAAAAAAAECEQMEEiExQRMiMlFhBbHwQoGRocFx/9oADAMBAAIRAxEAPwDDcP4Wz4yLDRGNoNY11QgX+EQimgREWC5Gc6dkbLlN2dVFZhOFEkveYGv9kbiqAywLuPojHMnuCWHp3zO8ErGV9bCtpsyn4jqUTw7h0NkG5Rj8K15k3U9CgGDdF0FA2KZlbl3KFZhdBzVmWAmSl7kdU9wUB+5gwCpn0HkADdTUsOGknVE4NhEkpbgoLweDyN6qDFvEEEKepXmyAx4BbaZUVyyRQ4jB3tJTWYWoSRGuiNYzkSp/ek2v5KbRFFNiOG1GaiVIMEXtsACr3BZi/KW5hz5Kwq4AQXAdoaBK64HRkKVA/CRdV+J4a5jiWjw2Wymmf8QFjuZ0QlXCOeSBBGzhopKTE4ozFJubv3G4VgxwaMqsanCW5ocIcNx80DWwTmvyu30OxVq56K29vYUztCRZTVKhENVa/DvbcOT6VQu+I3ToZYYWna51urCjUMwqjBsvJJjYKyaYItJQJh/tY2cNhiNqkf7lVsqwCIuj+PVpwLHGxbWb4SY+qDbhWntZwkyuL5JeHVSAYRVGmYBdYEwg3BrSMpkI+m5pa3NeT5KBZZDUcQ6W7H0ReLd+7Lx8RQbmDPraLeCPxlECmHDyQ+0JDOG3AJU+OqP/AC+aBwpkDVHvpOdYHZP0CQVT7k8woeGYw1DDmkCNdlJVoS0tnomUafu2gA7qapkS1zM5pKAYpo/8MpJkTzpmLJERcottXKBbVD4VxLZy36qI1XuMD5LMaQxmIJMAGyKeChaZcBdp8lG5z3GIISY0HsLu4Lor9UOGONhYKNmHfeBKQw0uJKcyrNpQZbUFspJ710Cp/D6pgHm0KVjxGt0EKdZ5DWNc5x2aJPkFd4P2QxLoNQtp9HO7X9LJI8YSbSXIivqO6oWoSHTmstc32NaB+8xD+5rWj1Lj8lw+y2G3fWP+tn/1qv4+OPbGot9IyzoI1trpeVEa9+y4dVp6nsdQN21aw78j/QZVVYz2GeL0qzXdHTTd5mWebgpxzQl0wca7I8NV80fRxJWcxWCxGHMPY9s6SLHq06OHUErmGxrxdwJU2rBF5jO1qwOCBpUQ0/uyRzClw/EQbEQjHZSJAEpJtdgJ2H94O1Y+qgqcPEFsSCisLiDMPbZTPotJkad6adCZmcXgHU9DmZ6hV9gei0fEGNzANkDUqqxfDiZc0eHNaIyvsplFx6GtxTbCVZCqJHVUFKnJ5a+iJabiHEzBU9hDemXXH6g/APHKqz/c1RUajBTgtuVBjBmwWKJF2lju6CL+ifhiHNEi0a+ChLgI8shZUaAQOascBVkRAEKJuFYAOSlLWtMg8tNFW2WUcayC63wmfNH4yoCyI2ELlOoy75HaEFTVA3K0gyN0r5FRW4Go3QyN1Z0a+4BQOFLZcTGuiLzNnMHabKQgoVBcKQtbBvBQ9R4iZ1ULaMiZTQMMaSLZlxVrsI4mc/qkpkARtaiALKMupXIiearmtBRDaLR+hWQ1BT6lOLO8E7D+7gmblC4mIBA8go5ESbelkhhVGk0uJz+CJeGjRwVe3Dz8PguOounSe7mkMPYRzuVpeF+yhcA+uS0ahgs89/8AAPXuVh7L+z4oMbWrj96RLWm4pjYn+f5KTifF7kAz9+qqzZVjXPYoJzfHQZT93Sbkptawcmi57zqfFQVavVUb8Y4mbqSji57J8FzpZt75NKxbQitjAOQ+aEdxA8z8kPWp5qsdANeY+/JWmBwdPQAGN3OAHhJkqn5pOkW8RQE3GOOk/NT0eI7O/T+xVu/gbHCQ3xaQ75GfRVWN4MWiR2m89VZLDlhyyEcmOfAZTe0tMQWnVpEtPe028dVUcQ9ng+9Cztfdm4d/6bjef5DfkTomYbEFjr/8q3bXEA7H0Kuwapx76+xDJi+xjsPg87spb2tIi/dC0VD2PxDxIDW8g51/QFargRp1HuJaPekTmi72i0/5haedlfEtYJeQ0dSu/gxQyQ3XZy82ecJbao8e4nw6rQdlqtIPoRzBGqbg2P5WXq3GcLSxNFwsSAXNPJwH10XnL6gA7Iuq82P4botw5fiKx34TMNAD6qtxtDIOyCegvKPLHAS6Y6FNGAluZpcD3qqLotZk8Vgw4F4lp0g7oVhAOU6haanwtxPaJA680FxfhUWntRYrTDIuimeP1EFA5sJjm/8AlT5ArvDagNJnUD5KlPFDQpYhr2Ol9MsEaGbSjeA4gGky4+AImiuD5LOq5kkArtJ4FrckK8tcezrupBhtCqmi6wkuZAtBRWGxTbt57IMMAvqkwtnNCgwJHUW5zDhddqYUERmEKsxuKaH8nehCIpvY4QXGdTsrURZY1w1rbzogMNimmxdAG65XxkUzBzH6Kgo4+CQQI3HRWJEWzU+4Dr5zdJZ78QTcOgbJKVMiTe1Hs+ATVpuc2bua1xjvAVDTwLnRFV/gVvcS8Fpa6Y0Om6xuHfdwA0JA8Fg02SUo0/DVlgk7XpE3hlSLV3+ajqYGttVf81aU2bwAe9RPrAEt8+iu3MhtQLRZjBpWcB1b+i3/AOzXhdSrWNWvUz06QBgtABqH4Z5xBPksb+IyiJ16r1j2EolmBaSCC973GRGnZb6Qk5UtzQpLxBHtBxE/CNT6KhpNBvrzKl4g+ajydreev0TsO0SB3+mg9AuDkk5ybZ0YRUY0gihQLrBvdaSfNEVeEOi4g8pE+QuFo+H4YMbb4iQ0HcCBmPebowMGwsSWgai2rjzNjquhj0G6NyfP8/n+DHPV0+EYI0C11+WWfl4rQcAw4DQ4Wnl8R7zsPEeKJx1IOgBkzPQwLTP9lFhsHUaWti14J36d6ohiePJaVlk8inCui293PMkbH6HUd8kIPENv32PfoCf5gRB70bRYY7tuXMdxQWM+IdSD4yJ/2+q6Of6LMeL6qMdx/DBr7aET6SlgqhLD4H6Kf2tf2mjkB8ihcPYAc/pr6lcOSqbOrF3FFrgcTkcx/wDAQT3aOHkSjK2CrPxVR9V2YNcW040DTcQNjBE+KqmgZSehlbylhpa1x/hbPkF3P0p2pJ+U/wBzl69VTXpWY3EjD4apUdbK0+Zs31IXlj+K0x+aD1aQvRvbTCVatIe67TGXcwDtHkRzi9l5tkB/L8lu1HdMq0y+W0T/APblOJzaa6ovB8bo/mqAeMD1QdLDN1j0spnU6YHw+YCyUjVyHVOJUHRFVpH+YKPGVw+AC2B1CEOEpPGYMBI2hDVaFF35GgCxteeRQkhuyDFcMa5pa7edOqz7sIcLDSZZoHfR36q4NOkXdlhGs3PcpMRgGhhJc4gjQmfRXxkVShZWNdu2JKLzkAF0rNDEvwz+2C+lfK8D4Z2MK8w9cOGeZaRIg9fmiUSCl4G+95nUJ1ZstJB8EDXrtGUg/wDP0RRdYuHiFBommU3Ea7mnu0O6fSxmaGk3O8ahC8VLtQVXOxBI7ipxIs0WKYACQb6LPOxJa68a2UjeIkgByGc6Z+asX5ICdiCLSkoieqSLA9PwuOdMZA4cybddlm2YNpLiTq5x00uVf1HZGSB1KpxT66/ZXL0zXNG7KurBxhwNHyh34JpLjM5uaKxDABqVY+x/BfxNaXT7qnczudm/UrXG26RRJpK2W3sZ7ICoWV6zey3/AA2nf+Y/RekFkUyBs70cB9QmUgGiApadQTDvhd2T0/hPgfmteXBeJwXZhjmfxFJmJ4kcr3DmR6j+yfh68Br+WvyKsfaLhpMiLtn1vb0VBhq+Uw8RsR1Xk5Jxk0zvxalG0bvDYqWAtM6Hvi0+g8e9H08UCLbGe47g+qw2DxzqJlvbYb5Z9Qdir7C8Ro1LtqBruTjld56H0XQwal9Xz/OjHlwL+xoGMBgtOhMdx1aeSMyAiPsKiDamov1H/wCZCmbiqw2t1C6OPPGP1Rf+DHPE300W4HPVUFaqC8k2DRc+f6ok8ZLf8QNA6uA+qo/aGsPdzSu17rkdBoSqdZnhKKcfO16WafFJSqXpQ4+r72tPWfPQeicD2iRcNEDvKbh6MAz4nv8AknYdmd06MbvzK4np1ekWOBw2fLT3qENPcfi8hJ8Ft67zJGyq/Zzh+Ue+eIJEMB2bu6NibeHerEr036bgePHufb/Y4ety750vBrTCyntZ7Pi+IpCBrUaP94+q1RCfTOxuDqt2SCmqZlx5HCVo8ozWQddo2B8Fe+03DnYeuWtAyO7TZG3LwP0VRTx/ayvDR1hcpxlF0deMlJWA4Wg9lQH8v0R9WpSuI7XIBS0sQ1xhEuY0afJRbf2HwUfugH5mjKLggzCLdpFvmj3x9hQyPsJ7goqH4emCRBcCO0Itf6LOY3hDqRL8J2mH4qXT+X9FtnPBBjXoFXtIYdDfX9VbGdFUoWZPD4plUWs4atNiO8I/D1SQR4qTjXAm1BnYctUXDoiRycN1RUcZUovDKoyu0B/K7uKm1uXBX9L5D8WZHXkqzFQL7o/GYrNEd6rcRh80kG+sbJRf3G0C1iImU3DnMImO7kkWyDMqfg4bmymB37qTfARjyMOAdsJHOUlo2YVsW+a6qvisu+EjTe0DwW2lpJAjpcz6Khq1SxpIMnbqrbjTx7wNNsrZjvJj5eqpsXVbGghZcKqCdFmR8gFXFvJiJJMCNZOy9g9luHDD4djPzRLjzcdV5V7I0218cxoghk1D/p09SF7JMBdHTx/qZg1EvCZ9VRPxFoUFSog6z4WlsypF/QqNrMDXmHAQ12x/ld+qznF+DFpPZh3z69QpeFY4Zyw+H1C0IxAIDagDm7A6juOy5uq0Uc3K4ZtwamWLh9GDDKjbRr5Jr6QO0LbYngzXg+7eBOz7H+ofoqfE+ztUflf4dr/bK5GTRZYdxf7nRhqccvSiY1w0c4d0j6qTM86vf5lGO4ZUHMDq0p7OHVDoHHuaT8gqVil1Rbvj9wBtEbyfFFsxTsmT8o22CssP7P1TpTeeroaP/cZVph/Zaf8AFe0dGDMf6nCB5LTj0WaX0x/4Uz1OKPbMxh2Go7KJjoJLugGpWy4RwGIdWAtdtPXxdz7vmrPBYGnS/wANgB3cbuPifkiQV1tL+mxx/NPl/wCjn6jWufEeEOddDPajGtUNdq6iOeweFxOTSmIqfa/ACrh835qRn/SbOHyPgsF+AbO224XqxpB7HsOjmkeYheVHDd9lg1SqSf3OhpJXFokp8Oa0WGuqTcJF7gcpUdNh0vHPQqVtEDcrI7NaGvaARY30uE51ADpPND18IXEGSAOi7VZzn0Q0FjnYQE6GfmhHYQAxczpzROYaZroatgxOaXTzAQrBja2DG5PdKA4hwmlUbBaXDXUW6hWL6ROjiT1TPwZFs3zPzUk2iLSZgeJ4CrhrwXUdry5ven4cteBlgzutHj+HVLmbcufgs3iODvZNXD/62bf2V6akiqnEYWNENIMXulXwQiRzXcNiWVJEFrhq06g9OYVthKRc37+5UGmhqmUgw9XZzl1W4wlTaI66pJWOg7j9UmtUAcBLiBYXDYbHS4Ko+I1gxsFwHJWIwjnuJc47nXUm5VJxfA5jJLoG6jFR4TJSvs1n7JMI331V41honvJJ+QXqlamvNP2QgB1YafAb6/mC9YNOVvw8owZuJFNUplC1m2V3UoIHE4ZTaKkzN1GEOkWIuFo+H4wVWRo8bKsq4dRU2uY4ObYhU1TLLNdQqSPmi6byNCqPBYvNcWd+ZqtqLwdFYiLDmVncypW1DzQrCp2KwiSgp4TGrpKBD8yfhhN011AFFNAATA6VBX0XK2MY3Vw+Z8ggcTxVg/i8kITJU1ygo45jrA35GyleUyITgl5ZmGY8pPPmvTa9cUqNSobBjHO8gSvFm44sJgh9uWngser5pG7Rp8svy47aHcGF17439VVYDiLqgJa0SJtJ23Q2L4i4j4Wuy3MHNHJY9ht3F4952lREcx+irsJjXPE5SLDT1I6JjsR7sE6C/U+SNtCssHNB0I8008tfFZ/D8SOY5qvZNgQBztZXlBhcJBLpHxRH2UUA5rDrYeKRZm/5UdLCuDYJJPcuZDJu7uyoAGxrnMm5IHyUODpteC5oc0k+B8QEa7DONjMG09PFF4bAljcosE74FXJjfaT2fDyX05Dhe2x5z15IGjxIUX+6qkxAy1CMsmLgibXkSvQK2CJB67jXx5rN8X4GXRnYMsQTGvVTjLxkXH1A4wbnXnW9ikqh3BMS21KuQwWaCJIHJJWbPyivf+C99wGAiwLukSe/dUGPoZQfS6v85cBmAkaWPmh+JNzNINzHKVlvk0tHP2ccTy4wMJtUYR/qHaHoHL3CmbL5qwn7mq2owjOxwcLcj8tvFfQnAOINrUWPaZDgCPHbvGnguhgkukc/Ux5ssnAKF9MLKe3eNxDMraHvATeWBx01nLeFlRjeInR+I/oq/UK6U0nRRGFq7PSa2FCHdglhsPV4ifjfiCOjXD5qwoOxm4xHmP8A5Jbk/A2temjfgSLtJB2IT6XEXUz++aR/O0SP9Q1b8u5UjKWMO1fxc0f9aMo8PxR1D/Gr+koX/gmanB49jxIcHDmCFYMqhY2h7PVJnK0E7h7pPfDQrKjwKpu9vk4+pcpoizSioP8AlPp15s0Zvl4lUtHgx3qHwaPrKIOAc0dmof6W/QBSEXZcGiXG/wB2AVDVx1apXewtNOlTgEj4nk8jsPuygOKBtVnO2SMvZnkRJsehKrv+8dL3jmuqtYXAAhxghzSYBm2h1lAFvi3NEBltyg3NlPY9rr52nrmC47ENBhgzu6aefJKh2MdRtKt8JJDZ1gIPDUXG7zPQfCPDfvP/ADc4ZgY0veQAASSdABckp9C7Mx+03iPusIKLSM1Yxf8AgbDnHzyjxK8XOPew9kj771s+PcfoYzEufVJFNstZrZomCdhJl2m8bKjdh8KajgXGGhsEWaedpk+C5uXJulZ18OPZCvSpwnGKjDmB55hMAzrpoj6GNAe57R2YAsYHW8+iIo8Pwjr9sTni4i2hEm3ip8HwzCgkZifhJZJN7xJHryVdkxmE4q2m2xcRDp7YkX5b73CbQ9oqZa7OCTPjCHwWBw7mEl8OAfZwtrY5tLAjRE4PhuHeTJaRmZBa4meY1t6qLTHaK8mXB4EtvYga7QjsPxgsZGUtvqDbpqrHC8LphsZ5HajUCJFoMx3iETU4fTMG21yfldFEWwbA8Re65cOsAfcqxFYkAgkjuH6KJmGYyBI33+iKbTadxtbuQwT5IiHfcfUJ9J7tJt1A/REZU5oEbH7+aVkhU321B8k/EMDmEFto2AJ8AnU6TdIHqiWUWjQW8UyLZlgA6/vMvRwgiLXEJLTuwdMmSxhPMhJPkXBgvfwQCLd8RChdXzTDgYkeWsc0FjnAiBAA6nxsYXKlQNb2Gt8YAnbdVFgDixJlp9B9Vpf2de04pVDh6khrj2SbQ4nT/KduveqWnh9XZmzoY+HymFQ4+jWJJmABsRFiesq7E6kU5IWqPpek8OE2Kf7tv8I8l5T+zn28zZcPinQ+wY92jxsCf4uu/evVaNQOFl1Iys5k4OLO+5byC77kck8BOCkVjWsClawLgCcAgCRrFM1qhapGuQBM1qcWhQhxXZQMD4jgGvGioavBKk6Bw/mEmOUrUrhcgDMs4M+f4RyAA9YlWOD4U1nfudSe8m6sw2VM2mGiXEAC5nkgBmGwwWN9svamm5/4VhBH5j/Edmgja3iUH7Ze3Bd+4wk5TZ9VvLk3p18lQfhWOax5Z2mxcgyPKyx586+lG7Bp2vmZW8TfSEZGNJMiMxkukAieYkFD0DTuXs7X5mAnRoub+HmrZmJovdNnFuki4nU9JMKcYcagyBsWCZOpneSsfBt5KCqxvuyW0jIG5Jy3g6brtPGCnmNPLHZztc3XXYkHZXNPAsaCJkG+l/GB1KidRY8OLRJdEzyboPRS4I8lXRqAf4bDcETNzcR0030CeaNMkknIbOgGbTqRZW3uqeYTGYTE6idde4KP8K3tOEXblBnbluhCZB7oBwAdc9YEc42281NUb2rEEi3xbxIiVxlFlyTGh5fdx6KGhgm5nua74r62FhonwLkno5ryQI8r+AhEtc62+s80F+FIjXLBHj9x6rjMMeySZLTtMGbeGiOGHIa/FXDS68TbW+8Iqk4kC/1+SqTh4iZkS0cxMQfT1VhSpGc0mx0Q0gTLCk9wg2juhEZ50J9UEJImYCTHkCxPkVBxJWWIqD+H0SQrXn+IridAYxuAF9ANefzTamBOxsOiTqxnmOWn1Xa1V+WW5fHutdV0SsGfQItnb3QP1QuOwTy2GhniIPnt6qZuJdIlo07XeP4QNEQ6vLZAA7zOvfopU0yPDM87hzsozMaT5271sfZb2zq4eGV5fT0BmXtH/UO+6qRi+xnLPCYJHcSIQzO2XEsgAxrrz3UlOSdojKCkqZ7hwnjFKuzPSeHDodDyI1B6FWjYXz5Rrvpuz0nOYRu1xafQXHotFwT9pVZpy1WNqxuDlf36QfABbMepv6jHPTP+k9jATgsbw/8AaHhHwHudTPJ7fqJHqtHg+OUKnwVabu57T9VpjOMumZnjku0WITgVG2s07p4eFIjQ7MlKjfiabficB3kD5oDE+0+Dp/FXZ3NOc+TZSckuxqLfRaBpUjaPNY3G/tGpNtRpPeebuy36n0CzPEvbDFV5Gc02nan2fN13fRUy1EF+S+GmnL8Ho/F/aHD4YHM7M8Ccjbu8tvFef8a9p34sEEtbTBvTkieRcdXd0AKgZgnG+d0m/K+/w6+KKpYUgGHPBuJLnO171kyahz48NmPTqHPpWYnDDKXtsB8WUw1oH+aPmi6GMd2WsexwIAvLde8nqFNTbB7Ty683aPKwHzUGKw5JkuAaNDlAMa6nqquy62HVKbXOENbPQncbjTXmn4eSIZAjYum+9wTuhqTA4dkkmxkzy5bC97bKUYdwbGY9eRnWZlKkFsTWuJOZpgWkut1PciRSawT8PdJ+QQVSm4C7jFt/DYD5KOrVqN+F0tF9BIgEWFtlLsjyWvueh7zfxumNaIhoIjl6wJVZQfUg/vS3SwAGm8KVuHfJPvTrPwiOtwfWEuB8hlZrXWLJJtptprKQwbWmQCOYuRuSoHNe4AOc0gbxP12gKauahghwBEdNNdkcBbJWlotHobylRpsJ6z1UdOq7Ui9yRMz3eQUlPENN8pBO+vobShITZMcNEmCfFP8ActaeQ9AhnYkNIzFxBOsCO6ER+JYTAJG+lkwJW0RMzr1+5T3tEargxbB2S6BzhcxNZhiHtj73vCBEXu29P6v7JJfiKW8T/q+jUkUKzJvoNtE30MT8ihnE5ssDoJmVYYipAENBjQggx1I1m6CqN3MOB9NvsIjEJSI8Jh5MnWYyzGnep+J0B7v4bHnefEdVZ06cZYsBrzNtNbKDi1VrmbibCyS5kO6RXDDNOHMzodIGl97bKDhDJaTDnSbF31AH3Ct8dUyUw2NvDxhScLpNFMSRuZBn9AUmvlsafNFSxkk9n80am3f5KFmHaaplgzAanlvurs0gTBjtHQi8DlbxlDYLCfvnmXaaa63MorsNwC7CiYLRcE6a8+5NFC4lrbmNDboJ1Kt/wji47gi3IDSOaCq0Kk0wCAQfzWjYG8SI1RGInId7ssNiRPWPkpWZ7kvdG3a/Vd4nhnnKGgEgiRIFjoT0mU80DrBsNbZRqLbEhOnXY7VibhwY5xNxdSNobCJ7hbwXKVB2VpJk8w6CfAqekwh7SW/EMpjQO2sdoKW0NxJhsNOl/vojqGF5x9/VDsp5RyvJj4Y8+SJwdTMHQQeUEmfvkk4klMlbQEwIgCZ+Sa8CJB3vfRNoPbJa03DsviAJsdBfZRBwc9zZBygG0TrcEJbQ3hBoAi+/X7umU8O0nXTr43UODxzXvc0Gcto+uvOy62uzO8CeyRm11Noi+3JSUWJyQfTpsi2m0JxotOk/3/RQ+8+IHS2m1vTuTadbtlvISLHTcd/0RtDcOq4VvKfmuMwrBaLnn+qJMbX5Tp5pS0NBG/ryNtFEdkYpN2HTRNqZA0kiYm0arprbjnvuBr013S98LjUxIEaDT19E6FuO06DCB2b/ACT3UwBMaePyTKFcROo9OWu6mqVQOnXa336IoLIfwzSNP7dEwUgJtptKkqvBtYDUjeL31t/dSCsBY202MdLp0KyMYcG0bT/ZMZhgQZbbwKk/EXduRyv4WvOq6+rp4cvAcvsIoLGNwjZgT996Y/CAzY+SIe7rJ0GkhNFWIsIKdiIBgHdfT9UlO6p/l/pSRbAw9cHaeWsDyFkThYDSQZGmgHySSQ3wL0JpE2kzyCGxtUveKeW4vM9/ckkiPrHLwXF6rcmQmCYj9bCEbhqBazLqQNrW++q4knLiKFHls7XIDHZpnrAynYCAf0Q3AWAg6yDIvFp8tUkk19DE/qQdVptJAdYjtTqOW0FcYf3hDrkZTc/D3a/NdSSSJMVR4zZDZ7gS2SbN3uAVLQs0Cxnpe9w3XlukkhrgSJKjhnJgW7Mmxvtbp3LlF2xHW0aDc8zaEkkVwBG8jUm0uc65Okhojw25KXhggOiIJkQI15g6nqkknJUhLsi4ZWOV7nQe1lBuC46CRdT0myXuBi7QeUkaC9zcdo6DRJJEvQXhDgcMffucQ3tTGXZrSARBAuZClp4cB74IJc4AjQ3EhvwxMAnVJJJskkE0WtzHK7sxyOxyx5z93TW0gC92gk3F5g35WkadEkkvR+E4gO7X5m5rSLjXQ936pCmCOcm8kxBG3K3ikkkMhpAfk/KbDTstsRPK+/JSH42gC+UnkT3kC4lJJS9InKBJDR1gzNonQT0/5T8Q6YBFi8aRETvKSSPQ8Oe6u3nLrT1MGddAVxoNyRFmutG9tIEwkkixDCSHjSXSQRYF0bjXQi/RONUEHXrBIiNSJSSUqItnM8w4GBMdInlt39FL71pgj4XA300MTH2UkkNAmcDxadYvBMfJJJJG1BuZ/9k='),
//                       fit: BoxFit.cover,
//                       width: double.infinity,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   'Cappuccino',
//                   style: TextStyle(
//                     color: Color(0xffEFE3C8),
//                     fontSize: 16,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 Text(
//                   'With Oat Milk',
//                   style: TextStyle(
//                     color: Color(0xffEFE3C880),
//                     fontSize: 14,
//                   ),
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   '\$4.20',
//                   style: TextStyle(
//                     color: Color(0xffEFE3C8),
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildBottomNav(BuildContext context) {
//     return BottomNavigationBar(
//       backgroundColor: const Color(0xff171017),
//       selectedItemColor: const Color(0xffEFE3C8),
//       unselectedItemColor: const Color(0xffEFE3C880),
//       onTap: (index) {
//         if (index == 1) {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (_) => CartPage(quantity: itemQuantity)),
//           );
//         }
//       },
//       items: [
//         const BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
//         BottomNavigationBarItem(
//           icon: Stack(
//             children: [
//               const Icon(Icons.shopping_bag_outlined),
//               if (cartCount > 0)
//                 Positioned(
//                   right: 0,
//                   child: CircleAvatar(
//                     radius: 8,
//                     backgroundColor: Colors.red,
//                     child: Text(
//                       cartCount.toString(),
//                       style: const TextStyle(color: Colors.white, fontSize: 12),
//                     ),
//                   ),
//                 ),
//             ],
//           ),
//           label: '',
//         ),
//         const BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ''),
//         const BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
//       ],
//     );
//   }
// }

// class CoffeeDetailPage extends StatelessWidget {
//   final VoidCallback onBuyNow;
//   final int quantity;

//   const CoffeeDetailPage({super.key, required this.onBuyNow, required this.quantity});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xff201520),
//       ///
//     );
//   }
// }

// class CartPage extends StatefulWidget {
//   final int quantity;
//   const CartPage({super.key, required this.quantity});

//   @override
//   State<CartPage> createState() => _CartPageState();
// }

// class _CartPageState extends State<CartPage> {
//   late int quantity;

//   @override
//   void initState() {
//     super.initState();
//     quantity = widget.quantity;
//   }

//   @override
//   Widget build(BuildContext context) {
//     double pricePerCup = 4.20;
//     double totalPrice = quantity * pricePerCup;

//     return Scaffold(
//       backgroundColor: const Color(0xff201520),
//       appBar: AppBar(
//         backgroundColor: const Color(0xff201520),
//         elevation: 0,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Color(0xffEFE3C8)),
//           onPressed: () => Navigator.pop(context),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 const CircleAvatar(
//                   radius: 40,
//                   backgroundImage: NetworkImage('https://i.imgur.com/Nc9TzD0.png'),
//                 ),
//                 const SizedBox(width: 20),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         'Cappuccino',
//                         style: TextStyle(color: Color(0xffEFE3C8), fontSize: 20),
//                       ),
//                       const SizedBox(height: 4),
//                       const Text(
//                         'With Oat Milk',
//                         style: TextStyle(color: Color(0xffEFE3C880), fontSize: 14),
//                       ),
//                       const SizedBox(height: 10),
//                       Row(
//                         children: [
//                           IconButton(
//                             onPressed: () {
//                               if (quantity > 1) {
//                                 setState(() => quantity--);
//                               }
//                             },
//                             icon: const Icon(Icons.remove_circle_outline,
//                                 color: Color(0xffEFE3C8)),
//                           ),
//                           Text(
//                             quantity.toString(),
//                             style: const TextStyle(
//                               color: Color(0xffEFE3C8),
//                               fontSize: 18,
//                             ),
//                           ),
//                           IconButton(
//                             onPressed: () {
//                               setState(() => quantity++);
//                             },
//                             icon: const Icon(Icons.add_circle_outline,
//                                 color: Color(0xffEFE3C8)),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             const Spacer(),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text(
//                   'Total:',
//                   style: TextStyle(color: Color(0xffEFE3C8), fontSize: 20),
//                 ),
//                 Text(
//                   '\$${totalPrice.toStringAsFixed(2)}',
//                   style: const TextStyle(
//                       color: Color(0xffEFE3C8),
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: const Color(0xffEFE3C8),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//                 padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 16),
//               ),
//               onPressed: () {},
//               child: const Text(
//                 'Checkout',
//                 style: TextStyle(color: Colors.black),
//               ),
//             ),
//             const SizedBox(height: 40),
//           ],
//         ),
//       ),
//     );
//   }
// }
