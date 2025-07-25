import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/linkapi.dart';
import 'package:flutter/material.dart';

class CustomItemsCartList extends StatelessWidget {
  final String name;
  final String price;
  final String count;
  final String imagename;
  final void Function()? onAdd;
  final void Function()? onRemove;
  const CustomItemsCartList({
    Key? key,
    required this.name,
    required this.price,
    required this.count,
    required this.imagename,
    required this.onAdd,
    required this.onRemove,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(children: [
        Expanded(
            flex: 2,
            child: CachedNetworkImage(
              imageUrl: "${AppLink.imagestItems}/$imagename",
              height: 80,
            )),
        Expanded(
            flex: 3,
            child: ListTile(
              title: Text(name, style: const TextStyle(fontSize: 15)),
              subtitle: Text(price,
                  style: const TextStyle(
                      color: AppColor.primaryColor, fontSize: 17)),
            )),
        Expanded(
            child: Column(
          children: [
            SizedBox(
                height: 35,
                child: IconButton(
                    onPressed: onAdd, icon: const Icon(Icons.add))),
            SizedBox(
                height: 30,
                child: Text(
                  count,
                  style: const TextStyle(fontFamily: "sans"),
                )),
            SizedBox(
                height: 25,
                child: IconButton(
                    onPressed: onRemove, icon: const Icon(Icons.remove)))
          ],
        ))
      ]),
    );
  }
}
