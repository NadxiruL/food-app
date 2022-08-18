// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:deligram/models/blend_provider.dart';
import 'package:deligram/screens/product_details_screen.dart';
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
                  ),
                  width: 150,
                  child: Container(
                    child: GestureDetector(
                      child: Column(
                        children: [
                          Image.network(
                            blends![index].product.featuredImage,
                            fit: BoxFit.cover,
                          ),
                          Center(child: Text(blends![index].product.name))
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                productName: blends![index].product.name,
                                productImage:
                                    blends![index].product.featuredImage,
                              ),
                            ));
                      },
                    ),
                  ),
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
