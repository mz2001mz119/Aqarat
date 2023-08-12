import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/core/constant/color.dart';
import 'package:flutter_course_mytest/data/emailstorage.dart';
import 'package:flutter_course_mytest/core/localization/changelocal.dart';
import 'package:flutter_course_mytest/view/widget/Buyer/buyerdrawer.dart';
import 'package:get/get.dart';

class AccountInformationBuyer extends StatelessWidget {
  const AccountInformationBuyer({super.key});

  @override
  Widget build(BuildContext context) {
    EmailController emailController=Get.find<EmailController>();
   //   String firstname=emailController.getData("username");
    return Scaffold(
      appBar: AppBar(backgroundColor: ColorApp.orange,),
      drawer:
      //Drawer(),
       BuyerSlider(),
      body: 
      // Generated code for this Column Widget...
SingleChildScrollView(
  child:   Column(
  
    mainAxisSize: MainAxisSize.max,
  
    crossAxisAlignment: CrossAxisAlignment.start,
  
    children: [
  
      Padding(
  
        padding: EdgeInsetsDirectional.fromSTEB(24, 12, 0, 12),
  
        child: Text(
  
        
  
            'First Name'.tr /* Account Settings */,
  
          
  
        ),
  
      ),
    
      Padding(
  
        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
  
        child: Container(
  
          width: double.infinity,
  
          height: 60,
  
          decoration: BoxDecoration(
  
         
  
            boxShadow: [
  
              BoxShadow(
  
                blurRadius: 3,
  
                color: Color.fromARGB(52, 255, 111, 0),
  
                offset: Offset(0, 1),
  
              )
  
            ],
  
            borderRadius: BorderRadius.circular(12),
  
            shape: BoxShape.rectangle,
  
          ),
  
          child: Padding(
  
            padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
  
            child: Row(
  
              mainAxisSize: MainAxisSize.max,
  
              children: [
  
                Padding(
  
                  padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
  
                  child: Text(
  
                 
  
                      'h43llaan' /* Change Password */,
  
                  
  
                  
  
                  ),
  
                ),
  
                Expanded(
  
                  child: Align(
  
                    alignment: AlignmentDirectional(0.9, 0),
  
                    child: Icon(
  
                      Icons.text_fields_outlined,
  
                     
  
                      size: 18,
  
                    ),
  
                  ),
  
                ),
  
              ],
  
            ),
  
          ),
  
        ),
  
      ),
  //stop here e e e
      
   Padding(
  
        padding: EdgeInsetsDirectional.fromSTEB(24, 12, 0, 12),
  
        child: Text(
  
        
  
            'Last Name' /* Account Settings */,
  
          
  
        ),
  
      ),
    
      Padding(
  
        padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
  
        child: InkWell(
  
          splashColor: Colors.transparent,
  
          focusColor: Colors.transparent,
  
          hoverColor: Colors.transparent,
  
          highlightColor: Colors.transparent,
  
          onTap: () async {
  
            //context.pushNamed('editProfile');
  
          },
  
          child: Container(
  
            width: double.infinity,
  
            height: 60,
  
            decoration: BoxDecoration(
  
        
  
              boxShadow: [
  
                BoxShadow(
  
                  blurRadius: 3,
  
               color: Color.fromARGB(52, 255, 111, 0),
  
                  offset: Offset(0, 1),
  
                )
  
              ],
  
              borderRadius: BorderRadius.circular(12),
  
              shape: BoxShape.rectangle,
  
            ),
  
            child: Padding(
  
              padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
  
              child: Row(
  
                mainAxisSize: MainAxisSize.max,
  
                children: [
  
                  Padding(
  
                    padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
  
                    child: Text(
  
             
  
                        'b1lw0hfu' /* Edit Profile */,
  
                   
  
           
  
                    ),
  
                  ),
  
                  Expanded(
  
                    child: Align(
  
                      alignment: AlignmentDirectional(0.9, 0),
  
                      child: Icon(
  
                        Icons.text_fields_outlined,
  
                 
  
                        size: 18,
  
                      ),
  
                    ),
  
                  ),
  
                ],
  
              ),
  
            ),
  
          ),
  
        ),
  
      ),
  


   Padding(
  
        padding: EdgeInsetsDirectional.fromSTEB(24, 12, 0, 12),
  
        child: Text(
  
        
  
            'Email' /* Account Settings */,
  
          
  
        ),
  
      ),
    
      Padding(
  
        padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
  
        child: InkWell(
  
          splashColor: Colors.transparent,
  
          focusColor: Colors.transparent,
  
          hoverColor: Colors.transparent,
  
          highlightColor: Colors.transparent,
  
          onTap: () async {
  
            //context.pushNamed('editProfile');
  
          },
  
          child: Container(
  
            width: double.infinity,
  
            height: 60,
  
            decoration: BoxDecoration(
  
        
  
              boxShadow: [
  
                BoxShadow(
  
                  blurRadius: 3,
  
               color: Color.fromARGB(52, 255, 111, 0),
  
                  offset: Offset(0, 1),
  
                )
  
              ],
  
              borderRadius: BorderRadius.circular(12),
  
              shape: BoxShape.rectangle,
  
            ),
  
            child: Padding(
  
              padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
  
              child: Row(
  
                mainAxisSize: MainAxisSize.max,
  
                children: [
  
                  Padding(
  
                    padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
  
                    child: Text(
  
             
  
                        'b1lw0hfu' /* Edit Profile */,
  
                   
  
           
  
                    ),
  
                  ),
  
                  Expanded(
  
                    child: Align(
  
                      alignment: AlignmentDirectional(0.9, 0),
  
                      child: Icon(
  
                        Icons.email_outlined,
  
                 
  
                        size: 18,
  
                      ),
  
                    ),
  
                  ),
  
                ],
  
              ),
  
            ),
  
          ),
  
        ),
  
      ),
  





  //buttons
      Padding(
  
      //  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
      padding: EdgeInsets.symmetric(vertical: 80),
  
        child: Row(
  
          mainAxisSize: MainAxisSize.max,
  
          mainAxisAlignment: MainAxisAlignment.center,
  
          children: [
  
            ElevatedButton(onPressed: (){}, child: Text("Edit",style: TextStyle(fontSize: 18,color: ColorApp.orange),)),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
            //ElevatedButton(onPressed: (){}, child: Text("Edit",style: TextStyle(fontSize: 18,color: ColorApp.orange),))
  
          ],
  
        ),
  
      ),
  
    ],
  
  ),
)

      
      ,
    );
  }
}






