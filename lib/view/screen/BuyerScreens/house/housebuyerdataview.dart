import 'package:flutter/material.dart';
import 'package:flutter_course_mytest/core/constant/color.dart';
import 'package:flutter_course_mytest/data/model/housesmodel.dart';
import 'package:get/get.dart';

class HouseBuyerDataView extends StatelessWidget {
  final HouseModel house;
  const HouseBuyerDataView({super.key, required this.house});

  @override
  Widget build(BuildContext context) {
   
     
   return Scaffold(
    appBar: AppBar(backgroundColor: ColorApp.orange,),
    body:   
    
    
    
    
    
    // ListView(
      
    //     children: [
    //       // ProductImages(product: House),
    //       Container(
    //         color: Colors.white,
    //         child: Column(
    //           children: [
    //             // ProductDescription(
    //             //   product: product,
    //             //   pressOnSeeMore: () {},
    //             // ),
    //             Row(
                  
    //               children: [
    //                 Container(
    //                   decoration: BoxDecoration(border: Border(bottom: BorderSide(color: ColorApp.orange))),
    //                   padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
    //                   child: Text("Name: ${house.name}",style: TextStyle(fontSize: 20),)),
                      
    //               ],
    //             ),

    //              Row(
                  
    //               children: [
    //                 Container(
    //                       decoration: BoxDecoration(border: Border(bottom: BorderSide(color: ColorApp.orange))),
    //                   padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
    //                   child: Text("Price: ${house.price.toString()} NIL",style: TextStyle(fontSize: 20),)),
    //               ],
    //             ),
                

    //              Row(
                  
    //               children: [
    //        Container(
    //                   padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
    //                   child: Text("Information: ",style: TextStyle(fontSize: 20),)),
    //               ],
    //             ),
                  
               


    //                 Container(
    //                       decoration: BoxDecoration(border: Border(bottom: BorderSide(color: ColorApp.orange))),
    //                   padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
    //                   child: Text("${house.information}",style: TextStyle(fontSize: 20),)),
                 
                
               





                 
    //             Container(
    //               color: Color(0xFFF6F7F9),
    //               child: Column(
    //                 children: [
    //                 //  ColorDots(product: product),
    //                   Container(
    //                     color: Colors.white,
    //                     child: Padding(
    //                       padding: EdgeInsets.only(
    //                         left: 15,
    //                         right: 15,
    //                         bottom: 40,
    //                         top: 15,
    //                       ),
    //                       child: ElevatedButton(
    //                         child: Text("Add To Cart"),
    //                         onPressed: () {},
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    
    
    






    // Generated code for this Column Widget...

 // Generated code for this Column Widget...
Column(
  mainAxisSize: MainAxisSize.max,
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Expanded(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 240,
              child: Stack(
                alignment: AlignmentDirectional(-0.95, -0.7),
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
                      width: 600,
                      height: 240,
                      fit: BoxFit.cover,
                    )
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.95, -0.05),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                       // context.pop();
                      },
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Color(0xFFF5F5F5),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Icon(
                            Icons.arrow_back_rounded,
                            color: ColorApp.orange,
                            size: 24,
                          ),
                        ),
                      ),
                    )
                  ),
                 Align(
                    alignment: AlignmentDirectional(0.95, -0.05),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                       // context.pop();
                      },
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Color(0xFFF5F5F5),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Icon(
                            Icons.arrow_forward_rounded,
                            color: ColorApp.orange,
                            size: 24,
                          ),
                        ),
                      ),
                    )
                  ),
               
               
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 
                     Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text("Name:",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: ColorApp.orange),),
                        Padding(padding: EdgeInsets.only(bottom: 5)),
                        
                        
                         
                           Text("${house.name}",style: TextStyle(fontSize: 18,),)
                  
                      ],
                    ),
                  //if you want to add text at the end
                  // Column(
                  //   mainAxisSize: MainAxisSize.max,
                  //   crossAxisAlignment: CrossAxisAlignment.end,
                  //   children: [
                  //     Text("data"),
                  //     Padding(padding: EdgeInsets.only(bottom: 10)),
                  //     Text("data")
                  //   ],
                  // ),
                 
                ],
              ),
            
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Area:",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: ColorApp.orange),),
                      Padding(padding: EdgeInsets.only(bottom: 5)),
                      Text("${house.area.toString()}")
                    ],
                  ),
                 
                ],
              ),
            
            ),
            // Padding(
            //   padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
            //   child: Row(
            //     mainAxisSize: MainAxisSize.max,
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Column(
            //         mainAxisSize: MainAxisSize.max,
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
                    
            //               'obyrn1rb' /* Customer Name */,
                        
                        
            //           ),
            //           Padding(
            //             padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
            //             child: Text(
                        
            //                 '00sam6zz' /* Randy Alcorn */,
                          
            //               textAlign: TextAlign.start,
                          
            //             ),
            //           ),
            //         ],
            //       ),
            //       Container(
            //         width: 50,
            //         height: 50,
            //         decoration: BoxDecoration(
            //           color: ColorApp.orange,
            //           boxShadow: [
            //             BoxShadow(
            //               blurRadius: 4,
            //               color: Color(0x2B000000),
            //               offset: Offset(0, 2),
            //             )
            //           ],
            //           shape: BoxShape.circle,
            //         ),
            //         child: ElevatedButton.icon(
            //           // borderColor: Colors.transparent,
            //           // borderRadius: 30,
            //           // borderWidth: 1,
            //           // buttonSize: 50,
            //           icon: Icon(
            //             Icons.mark_chat_unread,
            //             color: ColorApp.orange,
            //             size: 24,
            //           ),
            //           onPressed: () {
            //             print('IconButton pressed ...');
            //           }, label: Text("data"),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsetsDirectional.fromSTEB(20, 12, 0, 0),
            //   child: Container(
            //     width: 120,
            //     height: 32,
            //     decoration: BoxDecoration(
            //       color: Color(0x4D91D0E8),
            //       borderRadius: BorderRadius.circular(8),
            //     ),
            //     alignment: AlignmentDirectional(0, 0),
            //     child: Row(
            //       mainAxisSize: MainAxisSize.max,
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Padding(
            //           padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
            //           child: Icon(
            //             Icons.stars_rounded,
            //             color: ColorApp.orange,
            //             size: 24,
            //           ),
            //         ),
            //         Text(
                      
            //             'nxuoeukv' /* High Profile */,
                      
            //          // style: FlutterFlowTheme.of(context).bodyMedium,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsetsDirectional.fromSTEB(20, 12, 0, 0),
            //   child: Column(
            //     mainAxisSize: MainAxisSize.max,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
                  
            //           'ecbeopja' /* Title */,
                 
            //       //  style: FlutterFlowTheme.of(context).bodySmall,
            //       ),
            //       Padding(
            //         padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
            //         child: Text(
                     
            //             'xf6clrz6' /* Head of Procurement */,
                     
            //           textAlign: TextAlign.start,
            //          // style: FlutterFlowTheme.of(context).titleMedium,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsetsDirectional.fromSTEB(20, 12, 0, 12),
            //   child: Column(
            //     mainAxisSize: MainAxisSize.max,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
                    
            //           'kl55bl1c' /* Company */,
                  
            //        // style: FlutterFlowTheme.of(context).bodySmall,
            //       ),
            //       Padding(
            //         padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
            //         child: Text(
                    
            //             'nh9bkr5i' /* ACME Co. */,
                     
            //           textAlign: TextAlign.start,
                      
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // Divider(
            //   height: 12,
            //   thickness: 2,
            //   color: ColorApp.backgroundcolor,
            // ),
            // Padding(
            //   padding: EdgeInsetsDirectional.fromSTEB(20, 8, 0, 0),
            //   child: Text(
              
            //       'dkyygm1d' /* Notes */,
            
            //     //style: FlutterFlowTheme.of(context).bodySmall,
            //   ),
            // ),
            // ListView(
            //   padding: EdgeInsets.zero,
            //   primary: false,
            //   shrinkWrap: true,
            //   scrollDirection: Axis.vertical,
            //   children: [
            //     Padding(
            //       padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 16),
            //       child: Container(
            //         width: 100,
            //         decoration: BoxDecoration(
            //           color: ColorApp.backgroundcolor,
            //           borderRadius: BorderRadius.circular(8),
            //         ),
            //         child: Column(
            //           mainAxisSize: MainAxisSize.max,
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Row(
            //               mainAxisSize: MainAxisSize.max,
            //               children: [
            //                 ClipRRect(
            //                   borderRadius: BorderRadius.circular(40),
            //                   child: Image.network(
            //                     'https://images.unsplash.com/photo-1611590027211-b954fd027b51?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDd8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
            //                     width: 40,
            //                     height: 40,
            //                     fit: BoxFit.cover,
            //                   ),
            //                 ),
            //                 Expanded(
            //                   child: Padding(
            //                     padding: EdgeInsetsDirectional.fromSTEB(
            //                         12, 0, 0, 0),
            //                     child: Column(
            //                       mainAxisSize: MainAxisSize.max,
            //                       crossAxisAlignment:
            //                           CrossAxisAlignment.start,
            //                       children: [
            //                         Text(
                                  
            //                             'p82rjlf3' /* Alexandria Smith */,
                                  
                                    
            //                         ),
            //                         Text(
                                      
            //                             '2s53b50t' /* 1m ago */,
                                    
                                   
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                 ),
            //                 ElevatedButton.icon(
            //                   // borderColor: FlutterFlowTheme.of(context)
            //                   //     .primaryBackground,
            //                   // borderRadius: 30,
            //                   // borderWidth: 2,
            //                   // buttonSize: 50,
            //                   // fillColor: FlutterFlowTheme.of(context).primary,
            //                   icon: Icon(
            //                     Icons.add_rounded,
                             
            //                     size: 24,
            //                   ),
            //                   onPressed: () async {}
            //                   , 
            //                   label: Text("data"),
            //                 ),
            //               ],
            //             ),
            //             Padding(
            //               padding:
            //                   EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
            //               child: Text(
                           
            //                   'rnaiavvh' /* Lorem ipsum dolor sit amet, co... */,
                            
            //                // style: FlutterFlowTheme.of(context).bodySmall,
            //               ),
            //             ),
            //             Padding(
            //               padding:
            //                   EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
            //               child: Row(
            //                 mainAxisSize: MainAxisSize.max,
            //                 children: [
            //                   Icon(
            //                     Icons.mode_comment_outlined,
                           
            //                     size: 24,
            //                   ),
            //                   Padding(
            //                     padding: EdgeInsetsDirectional.fromSTEB(
            //                         4, 0, 0, 0),
            //                     child: Text(
                               
            //                         'bujmmf46' /* 8 */,
                                
                                  
            //                         //  FlutterFlowTheme.of(context).bodyMedium,
            //                     ),
            //                   ),
            //                   Padding(
            //                     padding: EdgeInsetsDirectional.fromSTEB(
            //                         4, 0, 0, 0),
            //                     child: Text(
                               
            //                         'ntlrz0gk' /* Notes */,
                               
                           
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //             Padding(
            //               padding:
            //                   EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
            //               child: ListView(
            //                 padding: EdgeInsets.zero,
            //                 primary: false,
            //                 shrinkWrap: true,
            //                 scrollDirection: Axis.vertical,
            //                 children: [
            //                   Padding(
            //                     padding: EdgeInsetsDirectional.fromSTEB(
            //                         0, 0, 0, 12),
            //                     child: Row(
            //                       mainAxisSize: MainAxisSize.max,
            //                       crossAxisAlignment:
            //                           CrossAxisAlignment.start,
            //                       children: [
            //                         ClipRRect(
            //                           borderRadius: BorderRadius.circular(40),
            //                           child: Image.network(
            //                             'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDJ8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
            //                             width: 40,
            //                             height: 40,
            //                             fit: BoxFit.cover,
            //                           ),
            //                         ),
            //                         Column(
            //                           mainAxisSize: MainAxisSize.max,
            //                           crossAxisAlignment:
            //                               CrossAxisAlignment.start,
            //                           children: [
            //                             Padding(
            //                               padding:
            //                                   EdgeInsetsDirectional.fromSTEB(
            //                                       12, 0, 0, 0),
            //                               child: Container(
            //                                 constraints: BoxConstraints(
            //                                   maxWidth:
            //                                       MediaQuery.sizeOf(context)
            //                                               .width *
            //                                           0.75,
            //                                 ),
            //                                 decoration: BoxDecoration(
                                             
            //                                   borderRadius:
            //                                       BorderRadius.circular(12),
            //                                 ),
            //                                 child: Padding(
            //                                   padding: EdgeInsetsDirectional
            //                                       .fromSTEB(12, 8, 12, 8),
            //                                   child: Column(
            //                                     mainAxisSize:
            //                                         MainAxisSize.max,
            //                                     crossAxisAlignment:
            //                                         CrossAxisAlignment.start,
            //                                     children: [
            //                                       Text(
                                                  
                                                        
            //                                           'rw21s3dk' /* Randy Alcorn */,
                                                   
                                                 
            //                                       ),
            //                                       Text(
                                               
                                                      
            //                                           'mj096u71' /* I'm not really sure about this... */,
                                                  
                                                  
            //                                       ),
            //                                     ],
            //                                   ),
            //                                 ),
            //                               ),
            //                             ),
            //                             Padding(
            //                               padding:
            //                                   EdgeInsetsDirectional.fromSTEB(
            //                                       12, 4, 0, 0),
            //                               child: Text(
                                         
                                              
            //                                   '1n2y2xin' /* a min ago */,
                                        
            //                               ),
            //                             ),
            //                           ],
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          
          
          ],
        ),
      ),
    ),
    Container(
      width: double.infinity,
      height: 120,
      constraints: BoxConstraints(
        maxWidth: 700,
      ),
      decoration: BoxDecoration(
        color: ColorApp.backgroundcolor,
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            color: Color(0x19000000),
            offset: Offset(0, -2),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 34),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Visibility(visible: true,child: ElevatedButton(onPressed: (){}, child: Text("Buy",style: TextStyle(fontSize: 20,color: ColorApp.orange),),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 254, 254, 254))),)),
            Visibility(visible: true,child: ElevatedButton(onPressed: (){}, child: Text("Rent",style: TextStyle(fontSize: 20,color: ColorApp.orange),),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 254, 254, 254))),))
          //   FFButtonWidget(
          //     onPressed: () async {
          //       showModalBottomSheet(
          //         isScrollControlled: true,
          //         backgroundColor: Colors.transparent,
          //         barrierColor: Colors.transparent,
          //         context: context,
          //         builder: (context) {
          //           return Padding(
          //             padding: MediaQuery.viewInsetsOf(context),
          //             child: Container(
          //               height: double.infinity,
          //               child: ModalSuccessWidget(),
          //             ),
          //           );
          //         },
          //       ).then((value) => setState(() {}));
          //     },
          //     text: FFLocalizations.of(context).getText(
          //       'ojneuoau' /* Generate Quote */,
          //     ),
          //     options: FFButtonOptions(
          //       width: 160,
          //       height: 50,
          //       padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
          //       iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
          //       color: FlutterFlowTheme.of(context).primaryBackground,
          //       textStyle: FlutterFlowTheme.of(context).titleSmall.override(
          //             fontFamily:
          //                 FlutterFlowTheme.of(context).titleSmallFamily,
          //             color: FlutterFlowTheme.of(context).primaryText,
          //             useGoogleFonts: GoogleFonts.asMap().containsKey(
          //                 FlutterFlowTheme.of(context).titleSmallFamily),
          //           ),
          //       elevation: 2,
          //       borderSide: BorderSide(
          //         color: FlutterFlowTheme.of(context).lineColor,
          //         width: 2,
          //       ),
          //       borderRadius: BorderRadius.circular(8),
          //     ),
          //   ),
          //   FFButtonWidget(
          //     onPressed: () {
          //       print('Button pressed ...');
          //     },
          //     text: FFLocalizations.of(context).getText(
          //       'suvzdvvk' /* View Company */,
          //     ),
          //     options: FFButtonOptions(
          //       width: 160,
          //       height: 50,
          //       padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
          //       iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
          //       color: FlutterFlowTheme.of(context).primaryBackground,
          //       textStyle: FlutterFlowTheme.of(context).titleSmall.override(
          //             fontFamily:
          //                 FlutterFlowTheme.of(context).titleSmallFamily,
          //             color: FlutterFlowTheme.of(context).primaryText,
          //             useGoogleFonts: GoogleFonts.asMap().containsKey(
          //                 FlutterFlowTheme.of(context).titleSmallFamily),
          //           ),
          //       elevation: 2,
          //       borderSide: BorderSide(
          //         color: FlutterFlowTheme.of(context).lineColor,
          //         width: 2,
          //       ),
          //       borderRadius: BorderRadius.circular(8),
          //     ),
          //   ),
          ],
        ),
      ),
    ),
  ],
)

 
 );

    
    
    
    
    
    
    
    
    
    
    
  
  
  
  
  
  
  
  }
  }
