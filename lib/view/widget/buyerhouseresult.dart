import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/core/constant/color.dart';
import 'package:flutter_course_mytest/data/model/housesmodel.dart';

class BuyerHouseResult extends StatelessWidget {
  final List<HouseModel> objects;
  const BuyerHouseResult({Key? key, required this.objects}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: objects.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){
            print("pressed me");
          },
          child: Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: AspectRatio(
                    aspectRatio: 1.5, // Set the aspect ratio as needed
                    child: Image.asset('assets/images/App_logo.png', fit: BoxFit.cover,),
                  ),
                ),
                
                SizedBox(height: 4),
                Text(
                  "${objects[index].name}",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 29.0),
                  child: Text(
                    "${objects[index].information}",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 13),
                  ),
                ),
                SizedBox(height: 15),
                 
                
              ],
            ),
          ),
        );
      },
    );
  }
}
