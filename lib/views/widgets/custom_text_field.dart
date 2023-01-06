import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  TextEditingController? controller ;
  String? label;
  String hint;
  bool isSecure;
  bool obscure;
  int maxLines;
  EdgeInsets insidePadding ;
  CustomTextField({Key? key, this.label, required this.hint, this.obscure = false, this.isSecure = true, this.insidePadding = const EdgeInsets.symmetric(vertical: 25,horizontal: 15), this.controller , this.maxLines = 1}) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: widget.controller,
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.top,
        cursorColor: Colors.deepOrange,
        obscureText: widget.obscure && widget.isSecure ,
        maxLines: widget.maxLines,
        decoration: InputDecoration(

          contentPadding: widget.insidePadding,
          suffixIcon:
            (widget.obscure == true )?
              IconButton(
                  onPressed: () {
                    widget.isSecure = !widget.isSecure;
                    setState(() {});
                  },
                  icon: const Icon(Icons.remove_red_eye , color: Colors.deepOrange,))
              : null,

          hintText: widget.hint,
          hintStyle: const TextStyle(color: Colors.grey),
          labelText: widget.label,
          labelStyle: const TextStyle(color: Colors.grey , fontSize: 18),
          floatingLabelAlignment: FloatingLabelAlignment.start,
          floatingLabelStyle: TextStyle(color :Colors.deepOrange),

          focusColor: Colors.grey,
          fillColor: Colors.deepOrange,

          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(
                  color: Colors.grey,width: .5)
          ),

          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(
                  color: Colors.deepOrange,width: 1.5),
          ),
        ),
      );
  }
}
