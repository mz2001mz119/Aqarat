import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/controller/resultimagecontroller.dart';
import 'package:flutter_course_mytest/data/datasource/static.dart';
import 'package:flutter_course_mytest/data/model/housesmodel.dart';
import 'package:get/get.dart';

class SearchResultTemplate extends StatelessWidget {
  final List<HouseModel> searchResults;

  const SearchResultTemplate({Key? key, required this.searchResults}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Results'),
      ),
      body: Text("data")
    );
  }
}
