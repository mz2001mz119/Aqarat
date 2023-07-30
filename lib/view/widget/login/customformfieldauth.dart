import 'package:flutter/material.dart';

class CustomFormFieldLogin extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData icondata;
  final bool? obsucetext;
  final void Function()? onTapIcon;
  final TextEditingController? mycontroller;
  const CustomFormFieldLogin({super.key,this.onTapIcon, required this.hinttext, required this.labeltext, required this.icondata, required this.mycontroller,  this.obsucetext});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: mycontroller,
      obscureText: obsucetext==null || obsucetext==false  ? false:true,
                decoration: InputDecoration(
                  hintText: hinttext,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                  label: Text(labeltext),
                  suffixIcon: InkWell(child: Icon(icondata),onTap: onTapIcon,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
              );
  }
}