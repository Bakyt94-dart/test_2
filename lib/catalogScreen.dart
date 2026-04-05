import 'package:flutter/material.dart';
import 'detailScreen.dart';


class CatalogScreen extends StatelessWidget {
  final List<Map<String, String>> items = List.generate(
    10,
    (index) => {
      'title': 'Item ${index + 1}',
      'description': 'Описание элемента ${index + 1}',
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text('Каталог'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[300],
        elevation: 0,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return Container(
            margin: EdgeInsets.symmetric(vertical: 6),
            decoration: BoxDecoration(
              color: Colors.deepPurple[300],
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              leading: Icon(Icons.list),
              title: Text(item['title']!),
              subtitle: Text(item['description']!),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      title: item['title']!,
                      description: item['description']!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}