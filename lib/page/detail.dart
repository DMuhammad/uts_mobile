import 'package:flutter/material.dart';
import 'package:uts_mobile/data/data.dart';

class DetailPage extends StatelessWidget {
  final int index;
  const DetailPage(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(listWisata[index]['namaWisata']),
      ),
      body: ListView(
        children: [
          imgView(listWisata[index]['imgAssets']),
          titleSection(
            listWisata[index]['namaWisata'],
            listWisata[index]['lokasi'],
          ),
          descSection(listWisata[index]['desc'])
        ],
      ),
    );
  }

  Image imgView(String assets) {
    return Image.network(
      assets,
      fit: BoxFit.cover,
    );
  }

  Container titleSection(String namaWisata, String lokasi) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            child: Text(
              namaWisata,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            lokasi,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[500],
            ),
          )
        ],
      ),
    );
  }

  Container descSection(String desc) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Text(
        desc,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
