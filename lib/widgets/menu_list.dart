// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:deligram/models/blend_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/blend.dart';
import '../services/services.dart';

class MenuList extends StatefulWidget {
  const MenuList({super.key});

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  List<Blend>? blends;
  var isLoading = false;

  @override
  void initState() {
    super.initState();
    //fetch data from API
    getData();
  }

  getData() async {
    blends = await BlendRemoteService().getBlends();

    if (blends != null) {
      setState(() {
        isLoading = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? ListView.builder(
            itemCount: blends?.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black38,
                  ),
                  width: 150,
                  child: Image.network(
                    blends![index].product.featuredImage,
                    fit: BoxFit.cover,
                  ),
                  // child: Text(blends![index].pr.name),
                ),
              );
            },
            scrollDirection: Axis.horizontal,
          )
        : Center(
            child: CircularProgressIndicator(),
          );
  }
}
