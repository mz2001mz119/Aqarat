import 'package:flutter/material.dart';

class BuyerSearch extends StatelessWidget {

  var formkey = GlobalKey<FormState>();
  final items = ["تصاعدي", "تنازلي"];
  String? value;

  var nameController = TextEditingController();
  var leastPriceController = TextEditingController();
  var highestPriceController = TextEditingController();

  //للبحث
  Icon customIcon = const Icon(
    Icons.search,
    size: 35,
  );
  Widget customSearchBar =  Text('البحث');
  @override
  Widget build(BuildContext context) {
    var Storeid;
var search = 'all';
var leastPrice = "L";
var highestPrice = "H";
String sortBY = 'تصاعدي';
    return Scaffold(









         body: 
         
         
         
         
                SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            child: SingleChildScrollView(
              child: Form(
                key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "اسم المنتج",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    //الاسم
                    TextFormField(
                      // controller: nameController,
                      onFieldSubmitted: (String value) {
                        print(value);
                      },
                      onChanged: (String value) {
                        print(value);
                      },
                      decoration: InputDecoration(
                        labelText: "الاسم",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),














                    //السعر
                    Text(
                      "السعر",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1.0,
                          ),
                        ],
                      ),
                      height: 65,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Text(
                              "أقل سعر",
                              style: TextStyle(fontSize: 17),
                            ),
                            Spacer(),
                            SizedBox(
                              width: 70,
                              height: 40,
                              child: TextField(
                                // controller: leastPriceController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),


                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1.0,
                          ),
                        ],
                      ),
                      height: 65,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Text(
                              "أعلى سعر",
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            Spacer(),
                            SizedBox(
                              width: 70,
                              height: 40,
                              child: TextField(
                                // controller: highestPriceController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),




                    //رتب حسب
                    Text(
                      "رتب حسب السعر",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 0,
                              ),
                              Container(
                                margin: EdgeInsets.all(0),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 4),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey, width: 1),
                                    borderRadius: BorderRadius.circular(6)),
                                // child: DropdownButtonHideUnderline(
                                //   // child: DropdownButton<String>(
                                //   //   icon: Icon(Icons.arrow_downward_rounded),
                                //   //   isExpanded: true,
                                //   //   value: value,
                                //   //   items: items.map(buildMenuItem).toList(),
                                //   //   onChanged: (value) => setState(() =>
                                //   //       {this.value = value, sortBY = value!}),
                                //   // ),
                                // ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    //بحث
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.blueAccent, // width: double.infinity,
                      ),
                      child: MaterialButton(
                        onPressed: (){},
                        // onPressed: () {
                        //   if (leastPriceController.text == '') {
                        //     leastPrice = "L";
                        //   } else {
                        //     leastPrice = leastPriceController.text;
                        //   }
                        //   if (highestPriceController.text == '') {
                        //     highestPrice = "H";
                        //   } else {
                        //     highestPrice = highestPriceController.text;
                        //   }
                        //   if (nameController.text == '') {
                        //     search = "all";
                        //   } else {
                        //     search = nameController.text;
                        //   }

                        //   if ((leastPrice == "L" && highestPrice == "H") ||
                        //       (leastPrice != "L" && highestPrice != "H")) {
                        //     SearhResultScreen().setStoreID(Storeid);
                        //     SearhResultScreen().setname(search);
                        //     SearhResultScreen().setLeastPrice(leastPrice);
                        //     SearhResultScreen().setHighestPrice(highestPrice);
                        //     SearhResultScreen().setSortBy(sortBY);
                        //     Navigator.push(
                        //         context,
                        //         MaterialPageRoute(
                        //             builder: (context) => SearhResultScreen()));
                        //   } else {
                        //     showDialog(
                        //       context: context,
                        //       builder: (BuildContext context) =>
                        //           _buildPopupDialog(context),
                        //     );
                        //   }
                        // },
                        child: Text(
                          "بحث",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
   
     













    ));


  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      );
}
