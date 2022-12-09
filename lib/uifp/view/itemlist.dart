import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:final_project/uifp/view/detailitem.dart';

class Cart1 extends StatefulWidget {
  const Cart1({super.key});

  @override
  State<Cart1> createState() => _Test2State();
}

class _Test2State extends State<Cart1> {
  final List<Map> myProducts =
      List.generate(10, (index) => {"id": index, "name": "Product $index"})
          .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("My Toko")),
        backgroundColor: Color.fromARGB(1000, 40, 79, 73),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
          ),
          itemCount: myProducts.length,
          itemBuilder: (BuildContext ctx, index) {
            return ListTile(
              leading: Container(
                color: Colors.grey,
                height: 150,
                width: 100,
                child: const Text("image"),
              ),
              title: const Text('Nama Item'),
              subtitle: const Text('Harga'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (c) => const DetailItem(),
                  ),
                );
              },
            );
          }),
    );
  }
}
