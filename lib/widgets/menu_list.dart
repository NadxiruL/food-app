// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:deligram/models/blend_provider.dart';
import 'package:deligram/screens/product_details_screen.dart';
import 'package:flutter/material.dart';
import '../models/blend.dart';
import 'package:provider/provider.dart';
// import '../services/services.dart';

class MenuList extends StatefulWidget {
  const MenuList({super.key});

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> with TickerProviderStateMixin {
  // List<Blend>? blenData = [];
  // var isLoading = true;

  @override
  void initState() {
    super.initState();
    final prov = Provider.of<BlendProvider>(context, listen: false);
    //fetch data from API
    prov.getData();
  }

  @override
  Widget build(BuildContext context) {
    final blendData = Provider.of<BlendProvider>(context);
    return blendData.isLoading
        ? ListView.builder(
            itemCount: blendData.filteredProducts?.length,
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
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black12,
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                blendData.filteredProducts?[index].product
                                        .featuredImage ??
                                    '',
                                fit: BoxFit.cover,
                                errorBuilder: (BuildContext context,
                                    Object exception, StackTrace? stackTrace) {
                                  return const Text('😢');
                                },
                              ),
                            ),
                            Center(
                                child: Text(blendData.filteredProducts?[index]
                                        .product.name ??
                                    ''))
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                                productName:
                                    blendData.blends?[index].product.name ?? '',
                                productImage: blendData
                                        .blends?[index].product.featuredImage ??
                                    ''),
                          ),
                        );
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
