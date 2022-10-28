import 'package:flutter/material.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';
import 'package:uts_mobile/data/data.dart';
import 'detail.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wisata Populer 2022"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: listWisata.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: CustomCard(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  imgSection(listWisata[index]['imgAssets'], context),
                  titleSection(listWisata[index]['namaWisata'])
                ],
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return DetailPage(index);
                }),
              );
            },
          );
        },
      ),
    );
  }

  Container imgSection(String assets, context) {
    return Container(
      width: (MediaQuery.of(context).size.width) / 2,
      child: Image.network(
        assets,
        fit: BoxFit.cover,
      ),
    );
  }

  Container titleSection(String namaWisata) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      child: Text(
        namaWisata,
      ),
    );
  }
}
