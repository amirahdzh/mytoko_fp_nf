import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:final_project/uifp/view/detailitem.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:final_project/screen/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Cart1 extends StatefulWidget {
  const Cart1({super.key});

  @override
  State<Cart1> createState() => _Test2State();
}

class _Test2State extends State<Cart1> {
  final List<Map> myProducts =
      List.generate(10, (index) => {"id": index, "name": "Product $index"})
          .toList();

  logout() async {
    await FirebaseAuth.instance.signOut();
    // prefs.setBool("isuserlogin", false);
    prefs.remove("isuserlogin");
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (BuildContext context) {
      return const Login();
    }), (route) => false);
  }

  var _firebase;

  late SharedPreferences prefs;

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((value) {
      prefs = value;
    });
    _firebase = FirebaseFirestore.instance.collection("ImageStore");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "My Toko",
          style: TextStyle(color: Colors.white),
        )),
        actions: [
          IconButton(
            onPressed: () {
              logout();
            },
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          )
        ],
        backgroundColor: Color.fromARGB(1000, 40, 79, 73),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: GridView.builder(
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
      ),
    );
  }
}
