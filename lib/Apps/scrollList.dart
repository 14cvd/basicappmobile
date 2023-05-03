import 'package:basicappmobile/Datalist/producList.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ScrollList extends StatelessWidget {
  bool selected = false;

  ScrollList({super.key, required this.selected});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return selected
            ? TextButton(
                onPressed: () {},
                child: Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: CircleAvatar(
                          child: Text("${ProductList.product[index].price}")),
                    ),
                    title: Text("${ProductList.product[index].model}"),
                    subtitle: Text("${ProductList.product[index].name}"),
                  ),
                ))
            : Card(
                elevation: 5,
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: CircleAvatar(
                        child: Text("${ProductList.product[index].price}")),
                  ),
                  title: Text("${ProductList.product[index].model}"),
                  subtitle: Text("${ProductList.product[index].name}"),
                ),
              );
      },
      itemCount: ProductList.product.length,
    );
  }
}

// class SelectedBotton extends StatelessWidget {
//   const SelectedBotton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return null;
//   }
// }

// ListView.builder(
//             // the number of items in the list
//             itemCount: myProducts.length,

//             // display each item of the product list
//             itemBuilder: (context, index) {
//               return Card(
//                 // In many cases, the key isn't mandatory
//                 key: ValueKey(myProducts[index]),
//                 margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
//                 child: Padding(
//                     padding: const EdgeInsets.all(10),
//                     child: Text(myProducts[index])),
//               );
//             })